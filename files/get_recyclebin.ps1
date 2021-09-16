Function Get-RecycleBin {
    (New-Object -ComObject Shell.Application).NameSpace(0x0a).Items() |
	Select-Object Name,Size,Path
}

Get-RecycleBin | Measure-Object -Property Size -Sum

Delivery-date: Tue, 05 Mar 2024 16:29:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhWjN-009pK2-2u
	for lore@lore.pengutronix.de;
	Tue, 05 Mar 2024 16:29:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhWjL-0001RV-Vl
	for lore@pengutronix.de; Tue, 05 Mar 2024 16:29:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hWa0b3+4/KuIYAernlm/f0fxiVmQfWsO7qkzFqoE5Go=; b=CufOmLlwqqUv7eXI2engptUU6G
	QCzt/GnjLGN0+vq0w6oY77+kOTZS1duSU4kqULtadrdieBZUjmlFln/Z0FvQ9KwPSvA4SYjSDbny4
	2Yoo5da6FoJtqPK212xyO1GuhcbbiBZ8hg89DfCN3LPsm0vuIfA+xnZvE8/zr384cAX8LMZqChZbC
	y3NltbhcCioOxPVTv+76zhDs6UR/53QYE958b8jR0gWi9hMaZykyI6TN07xcv7v85ucGvKgZzh9c7
	kMnlTZg0NY24xfbX1ktbUsApluVTOzZgAkYXg1PCVmcSQiXw61UXDv+jZH/faA8nYLRlhXKtdnAgG
	GXtM9hMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhWie-0000000EGiD-0S2E;
	Tue, 05 Mar 2024 15:28:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhWiY-0000000EGeZ-2nvG
	for barebox@lists.infradead.org;
	Tue, 05 Mar 2024 15:28:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rhWiU-00017z-1M; Tue, 05 Mar 2024 16:28:30 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rhWiT-004Zvt-Hs; Tue, 05 Mar 2024 16:28:29 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rhWiT-00AaLT-1a;
	Tue, 05 Mar 2024 16:28:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
References: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
Message-Id: <170965250948.2522737.9720317597333640552.b4-ty@pengutronix.de>
Date: Tue, 05 Mar 2024 16:28:29 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240305_072835_234208_5E27B618 
X-CRM114-Status: GOOD (  13.48  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 000/113] efi: prepare for ARM64 EFI loader support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 04 Mar 2024 19:58:45 +0100, Ahmad Fatoum wrote:
> I've been working on enabling use of barebox as EFI loader for a while.
> It's already functional enough to boot efi-stubbed Linux directly or via
> Grub, but some key parts like proper runtime services and the EFI boot
> manager are still missing.
> 
> Nevertheless, A lot of commits are already in a good enough shape to be
> upstreamed, which I collected in this series. A second WIP series with
> the EFI loader support will follow afterwards.
> 
> [...]

Applied, thanks!

[001/113] string: implement strcmp_ptr and streq_ptr helpers
          https://git.pengutronix.de/cgit/barebox/commit/?id=ab6b3b6b43a7 (link may not be stable)
[002/113] commands: efiexit: flush console and shutdown barebox
          https://git.pengutronix.de/cgit/barebox/commit/?id=d4a47c5f1477 (link may not be stable)
[003/113] treewide: add errno_set helper for returning positive error code in errno
          https://git.pengutronix.de/cgit/barebox/commit/?id=b0b6b9bd2634 (link may not be stable)
[004/113] vsprintf: guard against NULL in UUID %pU
          https://git.pengutronix.de/cgit/barebox/commit/?id=85ffcfca19ba (link may not be stable)
[005/113] common: add option to poweroff system on failure
          https://git.pengutronix.de/cgit/barebox/commit/?id=225004aad397 (link may not be stable)
[006/113] boot: print error code when booting fails
          https://git.pengutronix.de/cgit/barebox/commit/?id=1d06756875f0 (link may not be stable)
[007/113] common: efi: move directory to top-level
          https://git.pengutronix.de/cgit/barebox/commit/?id=c30fcd81f548 (link may not be stable)
[008/113] efi: payload: rename CONFIG_EFI_BOOTUP to CONFIG_EFI_PAYLOAD
          https://git.pengutronix.de/cgit/barebox/commit/?id=196140266808 (link may not be stable)
[009/113] efi: payload: image: return actual read_file() error
          https://git.pengutronix.de/cgit/barebox/commit/?id=b917445432d5 (link may not be stable)
[010/113] of: don't report failure to of_read_file twice
          https://git.pengutronix.de/cgit/barebox/commit/?id=fdd7da1169dc (link may not be stable)
[011/113] efi: payload: make missing state reporting less verbose
          https://git.pengutronix.de/cgit/barebox/commit/?id=c7fbc51c572e (link may not be stable)
[012/113] libfile: factor out read_file_into_buf helper
          https://git.pengutronix.de/cgit/barebox/commit/?id=761f51b69966 (link may not be stable)
[013/113] efi: payload: image: allocate image via loader if it exceeds malloc area
          https://git.pengutronix.de/cgit/barebox/commit/?id=63c4468ff1b1 (link may not be stable)
[014/113] efi: payload: image: use assigned barebox loader type on x86
          https://git.pengutronix.de/cgit/barebox/commit/?id=45883d351bde (link may not be stable)
[015/113] efi: payload: iomem: adjust types to avoid casting
          https://git.pengutronix.de/cgit/barebox/commit/?id=33860c392de7 (link may not be stable)
[016/113] commands: kallsyms: add command-line interface
          https://git.pengutronix.de/cgit/barebox/commit/?id=396fe8fb8b71 (link may not be stable)
[017/113] block: define BLOCKSIZE globally in block.h
          https://git.pengutronix.de/cgit/barebox/commit/?id=2285dd1e4f19 (link may not be stable)
[018/113] cdev: implement setter/getter for cdev device node
          https://git.pengutronix.de/cgit/barebox/commit/?id=29d0e0522828 (link may not be stable)
[019/113] block: virtio: assign virtio-mmio device tree node to cdevs
          https://git.pengutronix.de/cgit/barebox/commit/?id=2481ff8ac2df (link may not be stable)
[020/113] commands: stat: print DT node for cdevs if available
          https://git.pengutronix.de/cgit/barebox/commit/?id=3401bb216585 (link may not be stable)
[021/113] partitions: have parsers record bootable bits
          https://git.pengutronix.de/cgit/barebox/commit/?id=35c1e544eb11 (link may not be stable)
[022/113] commands: stat: display bootable partition table bit info
          https://git.pengutronix.de/cgit/barebox/commit/?id=aca95e86e163 (link may not be stable)
[023/113] block: record block device type
          https://git.pengutronix.de/cgit/barebox/commit/?id=46ba653ef10e (link may not be stable)
[024/113] include: add definitions for UAPI discoverable partitions spec
          https://git.pengutronix.de/cgit/barebox/commit/?id=cba5b8e2c184 (link may not be stable)
[025/113] efi: payload: restrict 8250 UART at I/O port 0x3f8 registration to x86
          https://git.pengutronix.de/cgit/barebox/commit/?id=4a3f29461bab (link may not be stable)
[026/113] fs: fix unreaddir, so readdir returns unread dirent first
          https://git.pengutronix.de/cgit/barebox/commit/?id=32ee1f61b692 (link may not be stable)
[027/113] fs: turn creat into static inline helper
          https://git.pengutronix.de/cgit/barebox/commit/?id=2ac0fe5c32ff (link may not be stable)
[028/113] fs: drop unused LOOKUP_ flags
          https://git.pengutronix.de/cgit/barebox/commit/?id=582d3b8bd764 (link may not be stable)
[029/113] fs: opendir: reference mount point until closedir is called
          https://git.pengutronix.de/cgit/barebox/commit/?id=4378835b3730 (link may not be stable)
[030/113] fs: factor out opendir iteration
          https://git.pengutronix.de/cgit/barebox/commit/?id=8208b020c4d2 (link may not be stable)
[031/113] fs: implement fdopendir and rewinddir
          https://git.pengutronix.de/cgit/barebox/commit/?id=8c5a89504ae5 (link may not be stable)
[032/113] fs: remove unused member from struct nameidata
          https://git.pengutronix.de/cgit/barebox/commit/?id=8de734a1f939 (link may not be stable)
[033/113] fs: always check path_init for errors
          https://git.pengutronix.de/cgit/barebox/commit/?id=a9020bdff31a (link may not be stable)
[034/113] fs: set current working dir directly when mounting root
          https://git.pengutronix.de/cgit/barebox/commit/?id=abb3a37a5031 (link may not be stable)
[035/113] fs: implement openat and friends
          https://git.pengutronix.de/cgit/barebox/commit/?id=c47228735021 (link may not be stable)
[036/113] fs: implement O_PATH
          https://git.pengutronix.de/cgit/barebox/commit/?id=049b0e98ded7 (link may not be stable)
[037/113] fs: support different root directories
          https://git.pengutronix.de/cgit/barebox/commit/?id=127f7b809e0c (link may not be stable)
[038/113] fs: implement O_CHROOT
          https://git.pengutronix.de/cgit/barebox/commit/?id=b89cf57d484e (link may not be stable)
[039/113] commands: introduce new findmnt command
          https://git.pengutronix.de/cgit/barebox/commit/?id=992f8aeec132 (link may not be stable)
[040/113] fs: initialize struct nameidata::last
          https://git.pengutronix.de/cgit/barebox/commit/?id=6548e5b9ca68 (link may not be stable)
[041/113] fs: support opening /
          https://git.pengutronix.de/cgit/barebox/commit/?id=3a478ff3e1e6 (link may not be stable)
[042/113] test: self: add dirfd tests
          https://git.pengutronix.de/cgit/barebox/commit/?id=fe477b0a74de (link may not be stable)
[043/113] commands: stat: add option for statat
          https://git.pengutronix.de/cgit/barebox/commit/?id=5b175c52b53b (link may not be stable)
[044/113] efi: payload: lower command line options print from error to info
          https://git.pengutronix.de/cgit/barebox/commit/?id=73d824f77554 (link may not be stable)
[045/113] efi: payload: init: warn if /boot FS is unknown
          https://git.pengutronix.de/cgit/barebox/commit/?id=3893b00bda38 (link may not be stable)
[046/113] commands: time: switch to using getopt for -n
          https://git.pengutronix.de/cgit/barebox/commit/?id=a238ac807882 (link may not be stable)
[047/113] commands: time: reduce strjoin runtime, drop trailing space
          https://git.pengutronix.de/cgit/barebox/commit/?id=35a903414ddc (link may not be stable)
[048/113] commands: time: refactor into new strjoin
          https://git.pengutronix.de/cgit/barebox/commit/?id=788f616946df (link may not be stable)
[049/113] test: self: add strjoin tests
          https://git.pengutronix.de/cgit/barebox/commit/?id=f0102c263aeb (link may not be stable)
[050/113] filetype: have cdev_detect_type take a cdev
          https://git.pengutronix.de/cgit/barebox/commit/?id=9294edaa4382 (link may not be stable)
[051/113] ARM: mmu-early: gracefully handle already enabled MMU
          https://git.pengutronix.de/cgit/barebox/commit/?id=f53fc0b3212e (link may not be stable)
[052/113] efi: don't hide structs, enums or unions behind _t
          https://git.pengutronix.de/cgit/barebox/commit/?id=05d94839c918 (link may not be stable)
[053/113] efi: make headers self-contained
          https://git.pengutronix.de/cgit/barebox/commit/?id=a1c7c158eedf (link may not be stable)
[054/113] efi: unify whitespace for GUIDs
          https://git.pengutronix.de/cgit/barebox/commit/?id=0e9c0a9cbd0a (link may not be stable)
[055/113] efi: efi-guid: add more GUIDs
          https://git.pengutronix.de/cgit/barebox/commit/?id=62a782bb02f5 (link may not be stable)
[056/113] ARM64: cpu: setupc: rewrite to be fully PIC
          https://git.pengutronix.de/cgit/barebox/commit/?id=0bfc6ab8bc65 (link may not be stable)
[057/113] ARM64: runtime-offset: make get_runtime_offset fully PIC
          https://git.pengutronix.de/cgit/barebox/commit/?id=22ae71e69d20 (link may not be stable)
[058/113] pbl: introduce CONFIG_PBL_FULLY_PIC
          https://git.pengutronix.de/cgit/barebox/commit/?id=a7e6cd8e3efa (link may not be stable)
[059/113] efi: payload: fix ARM build
          https://git.pengutronix.de/cgit/barebox/commit/?id=f6559edc80d3 (link may not be stable)
[060/113] efi: payload: init: restrict barebox mem to first 1G only on x86
          https://git.pengutronix.de/cgit/barebox/commit/?id=b488d9ada034 (link may not be stable)
[061/113] efi: add efi_is_loader/efi_is_payload helpers
          https://git.pengutronix.de/cgit/barebox/commit/?id=626d4126b0e9 (link may not be stable)
[062/113] efi: payload: suppress EFI payload initcalls when not EFI-loaded
          https://git.pengutronix.de/cgit/barebox/commit/?id=b2059a82e395 (link may not be stable)
[063/113] ARM: make board data definitions accessible to other architectures
          https://git.pengutronix.de/cgit/barebox/commit/?id=6debda9a2625 (link may not be stable)
[064/113] boarddata: add barebox_boarddata_is_machine helper
          https://git.pengutronix.de/cgit/barebox/commit/?id=3361b466b5a7 (link may not be stable)
[065/113] common: add PE/COFF loader
          https://git.pengutronix.de/cgit/barebox/commit/?id=5e418b7cf555 (link may not be stable)
[066/113] efi: use efi_handle_t where appropriate
          https://git.pengutronix.de/cgit/barebox/commit/?id=069bf5f7dd0f (link may not be stable)
[067/113] efi: block: move definitions into header file
          https://git.pengutronix.de/cgit/barebox/commit/?id=b10356152382 (link may not be stable)
[068/113] efi: define efi_handle_t as opaque pointer
          https://git.pengutronix.de/cgit/barebox/commit/?id=36f28caa8701 (link may not be stable)
[069/113] efi: constify guid_t in API
          https://git.pengutronix.de/cgit/barebox/commit/?id=5da3afed6bff (link may not be stable)
[070/113] efi: rename efi_simple_input_interface to efi_simple_text_input_protocol
          https://git.pengutronix.de/cgit/barebox/commit/?id=4420b7d6bccc (link may not be stable)
[071/113] efi: add EFI_WARN constants
          https://git.pengutronix.de/cgit/barebox/commit/?id=d030653880e5 (link may not be stable)
[072/113] efi-stdio: fix wait_for_event argument
          https://git.pengutronix.de/cgit/barebox/commit/?id=4c402a058e38 (link may not be stable)
[073/113] efi-stdio: wait for extended input key event when using extended input
          https://git.pengutronix.de/cgit/barebox/commit/?id=f1f47dbf94a8 (link may not be stable)
[074/113] efi: flesh out EFI definitions in header
          https://git.pengutronix.de/cgit/barebox/commit/?id=51b155eb9e02 (link may not be stable)
[075/113] efi: add efi_driver_binding_protocol
          https://git.pengutronix.de/cgit/barebox/commit/?id=b2af074756a0 (link may not be stable)
[076/113] efi: improve usability of EFI_PAGE_* macros
          https://git.pengutronix.de/cgit/barebox/commit/?id=9135eff90223 (link may not be stable)
[077/113] fs: efi: move definitions into header
          https://git.pengutronix.de/cgit/barebox/commit/?id=bcfdca61e191 (link may not be stable)
[078/113] efi: fs: flesh out file system definitions
          https://git.pengutronix.de/cgit/barebox/commit/?id=9ba434fc6e95 (link may not be stable)
[079/113] efi: stdio: fix efi_register_keystroke_notify prototype
          https://git.pengutronix.de/cgit/barebox/commit/?id=0fe55b4c7fd4 (link may not be stable)
[080/113] video: mark EFI_GOP driver x86-only for now
          https://git.pengutronix.de/cgit/barebox/commit/?id=de32a6e176a7 (link may not be stable)
[081/113] filetype: add new file types for EFI-enabled Linux images
          https://git.pengutronix.de/cgit/barebox/commit/?id=1c8a0198f2dd (link may not be stable)
[082/113] efi: payload: register handler for EFI-stubbed ARM64 kernel
          https://git.pengutronix.de/cgit/barebox/commit/?id=158ca31e5619 (link may not be stable)
[083/113] efi: payload: factor C efi_main into dedicated file
          https://git.pengutronix.de/cgit/barebox/commit/?id=c6d2ed6850ee (link may not be stable)
[084/113] efi: payload: early-mem: simplify error message reporting
          https://git.pengutronix.de/cgit/barebox/commit/?id=cc43c6e4c6cd (link may not be stable)
[085/113] efi: payload: early-mem: use EFI_PAGE_SIZE instead of PAGE_SIZE
          https://git.pengutronix.de/cgit/barebox/commit/?id=3919cc4b2996 (link may not be stable)
[086/113] ARM64: add optional EFI stub
          https://git.pengutronix.de/cgit/barebox/commit/?id=742e78976dd4 (link may not be stable)
[087/113] efi: devicepath: improve const safety
          https://git.pengutronix.de/cgit/barebox/commit/?id=b9dea1fef6b1 (link may not be stable)
[088/113] efi: refactor device_path_to_partuuid for code reuse
          https://git.pengutronix.de/cgit/barebox/commit/?id=e5bf6b3e56b5 (link may not be stable)
[089/113] efi: devicepath: implement device_path_to_str_buf variant
          https://git.pengutronix.de/cgit/barebox/commit/?id=8d242311041c (link may not be stable)
[090/113] lib: vsprintf: align documentation with current feature set
          https://git.pengutronix.de/cgit/barebox/commit/?id=26224692c14d (link may not be stable)
[091/113] vsprintf: add %pD for printing EFI device path
          https://git.pengutronix.de/cgit/barebox/commit/?id=402dae62ce82 (link may not be stable)
[092/113] lib: string: import Linux strreplace helper
          https://git.pengutronix.de/cgit/barebox/commit/?id=b823168b76ff (link may not be stable)
[093/113] efi: payload: dynamically determine bootloader file name
          https://git.pengutronix.de/cgit/barebox/commit/?id=f1230c7f92cd (link may not be stable)
[094/113] efi: payload: iomem: register later
          https://git.pengutronix.de/cgit/barebox/commit/?id=7584e768f48a (link may not be stable)
[095/113] efi: payload: protect against buggy EFI implementations
          https://git.pengutronix.de/cgit/barebox/commit/?id=e0e30f636242 (link may not be stable)
[096/113] efi: payload: don't require efi_loaded_image->parent_handle for bootsource detection
          https://git.pengutronix.de/cgit/barebox/commit/?id=1c18863354dc (link may not be stable)
[097/113] commands: add cpuinfo -s option for stacktrace
          https://git.pengutronix.de/cgit/barebox/commit/?id=ffa2c5d47d18 (link may not be stable)
[098/113] efi: devicepath: align MemoryMapped name with spec
          https://git.pengutronix.de/cgit/barebox/commit/?id=41781cbb27ae (link may not be stable)
[099/113] efi: devicepath: pretty print BBS BEV DeviceType
          https://git.pengutronix.de/cgit/barebox/commit/?id=fcbbd5db1c51 (link may not be stable)
[100/113] efi: devicepath: format GUIDs as little endian
          https://git.pengutronix.de/cgit/barebox/commit/?id=0a4d84b435c6 (link may not be stable)
[101/113] efi: devicepath: move END device node definitions into header
          https://git.pengutronix.de/cgit/barebox/commit/?id=066114dcd743 (link may not be stable)
[102/113] efi: devicepath: drop underscores in hex constants
          https://git.pengutronix.de/cgit/barebox/commit/?id=80f5353a74cf (link may not be stable)
[103/113] efi: devicepath: namespace definitions
          https://git.pengutronix.de/cgit/barebox/commit/?id=58f24203d77d (link may not be stable)
[104/113] efi: devicepath: use flexible array members for trailing strings
          https://git.pengutronix.de/cgit/barebox/commit/?id=b2e6b2ebb0a0 (link may not be stable)
[105/113] efi: devicepath: drop unused macro
          https://git.pengutronix.de/cgit/barebox/commit/?id=257b49108c97 (link may not be stable)
[106/113] efi: devicepath: let compiler worry about unaligned unpacking
          https://git.pengutronix.de/cgit/barebox/commit/?id=93ab2357f7fd (link may not be stable)
[107/113] efi: devicepath: correct formatting of BBS
          https://git.pengutronix.de/cgit/barebox/commit/?id=009208f801ca (link may not be stable)
[108/113] commands: provide efi_handle_dump in both payload and loader
          https://git.pengutronix.de/cgit/barebox/commit/?id=387d6f9ed9a1 (link may not be stable)
[109/113] lib: uuid: implement uuid/guid_parse
          https://git.pengutronix.de/cgit/barebox/commit/?id=193958495437 (link may not be stable)
[110/113] commands: efi_handle_dump: prepare for supporting EFI loader
          https://git.pengutronix.de/cgit/barebox/commit/?id=910bca1d6bc7 (link may not be stable)
[111/113] commands: efi_handle_dump: print loaded image devpath
          https://git.pengutronix.de/cgit/barebox/commit/?id=473e9898a13b (link may not be stable)
[112/113] commands: efi_handle_dump: use guid_parse instead of open-coding
          https://git.pengutronix.de/cgit/barebox/commit/?id=1151c4325bc7 (link may not be stable)
[113/113] commands: efi_handle_dump: don't ignore failure to parse GUID
          https://git.pengutronix.de/cgit/barebox/commit/?id=281c2b56b928 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>




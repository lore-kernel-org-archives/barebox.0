Delivery-date: Thu, 03 Mar 2022 11:04:44 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nPiKB-00GOqp-Rt
	for lore@lore.pengutronix.de; Thu, 03 Mar 2022 11:04:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nPiK9-0000Bf-9c
	for lore@pengutronix.de; Thu, 03 Mar 2022 11:04:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=XWFkQ9pinYAaRCkJIZBM02sNM9+UiXfDF0g51ywFTLY=; b=g27ppJiCvb5/yEoNx1s54+8uSv
	nWtHLpEQt98zgTBoUJRTJQH1OkC3gygIVeCZPfvwxhaDjbqbkS/Os7oTgT32mUnXG3HF6E2oF+f6B
	p3Y74WxEK7lg1sRKPS95A3QI/GWcD/VilQsE2BkL0B98UBMmPIPczyP3AlEvJDQop8G6i1C4gSIuM
	rReLqbixqC3+rvsTNd9kNew5Lk8Wf488gTt+r/9Hc/VJP1VU9MKM51puSnfBklY+onTXC6ypLDlmx
	BpAdCv05s+uHQsiJ+1FJ3dNTenm7JM58HvMqeMZBKuEHFaGn59X79BAyzqMDxBAUBRspuhOlUa8iW
	mW0BGMag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPiHZ-005z1R-V4; Thu, 03 Mar 2022 10:02:02 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPiHF-005yxg-0m
 for barebox@lists.infradead.org; Thu, 03 Mar 2022 10:01:44 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nPiHD-0008MJ-PI; Thu, 03 Mar 2022 11:01:39 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nPiHD-00027j-GG; Thu, 03 Mar 2022 11:01:39 +0100
Date: Thu, 3 Mar 2022 11:01:39 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, pza@pengutronix.de
Message-ID: <20220303100139.GC19585@pengutronix.de>
References: <20220302160040.2990961-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220302160040.2990961-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:01:31 up 82 days, 18:47, 83 users,  load average: 0.29, 0.26, 0.23
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220303_020141_435952_8E5B31AE 
X-CRM114-Status: GOOD (  44.27  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,LOTS_OF_MONEY,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2] RISC-V: virt: riscvemu: add interactive tutorial
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Mar 02, 2022 at 05:00:40PM +0100, Ahmad Fatoum wrote:
> This tutorial walks the user through basics of the barebox shell.
> It can be invoked using the next command.
> 
> It will be extended later to cover actual boot as well, but
> that part still needs to be added to the web demo. To try it out
> interactively, go to:
> 
>   https://www.barebox.org/jsbarebox/
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> v1 -> v2:
>   - rephrase 04-cs0 as suggested by Philipp
> ---

Applied, thanks

Sascha

>  arch/riscv/boards/riscvemu/Makefile                  |  1 +
>  arch/riscv/boards/riscvemu/board.c                   |  4 ++++
>  .../defaultenv-riscvemu/data/tutorial/00-init        | 12 ++++++++++++
>  .../defaultenv-riscvemu/data/tutorial/01-interactive |  7 +++++++
>  .../defaultenv-riscvemu/data/tutorial/02-ofdump      |  6 ++++++
>  .../defaultenv-riscvemu/data/tutorial/03-devinfo     |  5 +++++
>  .../defaultenv-riscvemu/data/tutorial/04-cs0         | 11 +++++++++++
>  .../defaultenv-riscvemu/data/tutorial/05-drvinfo     |  4 ++++
>  .../defaultenv-riscvemu/data/tutorial/06-devinfo-dev |  6 ++++++
>  .../riscvemu/defaultenv-riscvemu/data/tutorial/07-mw |  9 +++++++++
>  .../defaultenv-riscvemu/data/tutorial/08-devfs       |  8 ++++++++
>  .../defaultenv-riscvemu/data/tutorial/09-partitions  |  9 +++++++++
>  .../defaultenv-riscvemu/data/tutorial/10-environment |  8 ++++++++
>  .../defaultenv-riscvemu/data/tutorial/11-env-data    | 12 ++++++++++++
>  .../defaultenv-riscvemu/data/tutorial/12-dmesg       |  9 +++++++++
>  .../defaultenv-riscvemu/data/tutorial/13-env-bin     | 11 +++++++++++
>  .../defaultenv-riscvemu/data/tutorial/14-env-init    |  8 ++++++++
>  .../defaultenv-riscvemu/data/tutorial/15-magicvar    | 10 ++++++++++
>  .../defaultenv-riscvemu/data/tutorial/16-env-nv      | 12 ++++++++++++
>  .../defaultenv-riscvemu/data/tutorial/17-env-saveenv |  7 +++++++
>  .../defaultenv-riscvemu/data/tutorial/17-env-usage   |  5 +++++
>  .../defaultenv-riscvemu/data/tutorial/18-mnt         | 11 +++++++++++
>  .../defaultenv-riscvemu/data/tutorial/19-automount   |  9 +++++++++
>  .../defaultenv-riscvemu/data/tutorial/20-mount-fs    | 11 +++++++++++
>  .../defaultenv-riscvemu/data/tutorial/21-state       | 11 +++++++++++
>  .../data/tutorial/22-device-params                   | 11 +++++++++++
>  .../data/tutorial/23-device-param-types              |  8 ++++++++
>  .../defaultenv-riscvemu/data/tutorial/24-boot        | 12 ++++++++++++
>  .../defaultenv-riscvemu/data/tutorial/99-end         |  1 +
>  .../defaultenv-riscvemu/init/90-tutorial-intro       |  6 ++++++
>  30 files changed, 244 insertions(+)
>  create mode 100644 arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/00-init
>  create mode 100644 arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/01-interactive
>  create mode 100644 arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/02-ofdump
>  create mode 100644 arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/03-devinfo
>  create mode 100644 arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/04-cs0
>  create mode 100644 arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/05-drvinfo
>  create mode 100644 arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/06-devinfo-dev
>  create mode 100644 arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/07-mw
>  create mode 100644 arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/08-devfs
>  create mode 100644 arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/09-partitions
>  create mode 100644 arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/10-environment
>  create mode 100644 arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/11-env-data
>  create mode 100644 arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/12-dmesg
>  create mode 100644 arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/13-env-bin
>  create mode 100644 arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/14-env-init
>  create mode 100644 arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/15-magicvar
>  create mode 100644 arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/16-env-nv
>  create mode 100644 arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/17-env-saveenv
>  create mode 100644 arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/17-env-usage
>  create mode 100644 arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/18-mnt
>  create mode 100644 arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/19-automount
>  create mode 100644 arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/20-mount-fs
>  create mode 100644 arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/21-state
>  create mode 100644 arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/22-device-params
>  create mode 100644 arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/23-device-param-types
>  create mode 100644 arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/24-boot
>  create mode 100644 arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/99-end
>  create mode 100644 arch/riscv/boards/riscvemu/defaultenv-riscvemu/init/90-tutorial-intro
> 
> diff --git a/arch/riscv/boards/riscvemu/Makefile b/arch/riscv/boards/riscvemu/Makefile
> index 75f52ada8f37..56949c2357c8 100644
> --- a/arch/riscv/boards/riscvemu/Makefile
> +++ b/arch/riscv/boards/riscvemu/Makefile
> @@ -2,3 +2,4 @@
>  
>  obj-y += board.o
>  obj-y += overlay-of-sram.dtb.o
> +bbenv-$(CONFIG_CMD_TUTORIAL) += defaultenv-riscvemu
> diff --git a/arch/riscv/boards/riscvemu/board.c b/arch/riscv/boards/riscvemu/board.c
> index 31d0c70be643..d9c7bd77b8cc 100644
> --- a/arch/riscv/boards/riscvemu/board.c
> +++ b/arch/riscv/boards/riscvemu/board.c
> @@ -5,6 +5,7 @@
>  
>  #include <common.h>
>  #include <driver.h>
> +#include <envfs.h>
>  #include <poweroff.h>
>  #include <restart.h>
>  #include <deep-probe.h>
> @@ -45,6 +46,9 @@ static int riscvemu_probe(struct device_d *dev)
>  	of_overlay_apply_tree(dev->device_node, overlay);
>  	/* of_probe() will happen later at of_populate_initcall */
>  
> +	if (IS_ENABLED(CONFIG_CMD_TUTORIAL))
> +		defaultenv_append_directory(defaultenv_riscvemu);
> +
>  	of_chosen = of_find_node_by_path("/chosen");
>  
>  	if (of_property_read_u64(of_chosen, "riscv,kernel-start", &start))
> diff --git a/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/00-init b/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/00-init
> new file mode 100644
> index 000000000000..1ff43142bada
> --- /dev/null
> +++ b/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/00-init
> @@ -0,0 +1,12 @@
> +
> +You are using Hush, barebox' default shell. You are currently using it
> +interactively, but it can execute scripts as part of the startup and boot
> +procedure as well. See for yourself:
> +```
> +  cat /env/init/90-tutorial-intro
> +```
> +Look around as you like. When you are ready to continue the tutorial,
> +type `next` again. The `prev` command does the inverse and shows previous
> +tutorial steps. The `help` command will show help usage text,
> +e.g. `help next`.
> +
> diff --git a/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/01-interactive b/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/01-interactive
> new file mode 100644
> index 000000000000..8b285cd9f475
> --- /dev/null
> +++ b/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/01-interactive
> @@ -0,0 +1,7 @@
> +
> +The interactive shell, its commands and the nodes in the virtual
> +file system they operate on enable quick UNIX-like prototyping
> +and debugging. Let's give it a try, shall we?
> +Type `of_dump` to list the open firmware (OF) device tree barebox
> +used to discover the hardware and `next` to continue the tutorial.
> +
> diff --git a/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/02-ofdump b/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/02-ofdump
> new file mode 100644
> index 000000000000..3271f734b20b
> --- /dev/null
> +++ b/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/02-ofdump
> @@ -0,0 +1,6 @@
> +
> +That's a lot of output, so let's restrict ourselves to just part
> +of the tree:
> +```
> +  of_dump /soc/virtio@40010000
> +```
> diff --git a/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/03-devinfo b/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/03-devinfo
> new file mode 100644
> index 000000000000..74bc9aa88a67
> --- /dev/null
> +++ b/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/03-devinfo
> @@ -0,0 +1,5 @@
> +
> +This node tells barebox enough information to instantiate a device and
> +to try match it with existing drivers. Type `devinfo` to see the tree of
> +devices known to barebox.
> +
> diff --git a/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/04-cs0 b/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/04-cs0
> new file mode 100644
> index 000000000000..fdb878fa935a
> --- /dev/null
> +++ b/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/04-cs0
> @@ -0,0 +1,11 @@
> +
> +In this tree, you will find 40010000.virtio@40010000.of, the
> +device corresponding to the device tree node we've just seen.
> +Devices can have child devices themselves. This device's
> +grandchild is `cs0`, the virtual console device that prints
> +you this very text.
> +
> +See for yourself:
> +```
> +  echo -a /dev/cs0 Append this text to virtio console
> +```
> diff --git a/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/05-drvinfo b/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/05-drvinfo
> new file mode 100644
> index 000000000000..068bf303d8cd
> --- /dev/null
> +++ b/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/05-drvinfo
> @@ -0,0 +1,4 @@
> +
> +Let's look at more devices. Type `drvinfo` to see what drivers are
> +available and what devices they were successfully matched with.
> +
> diff --git a/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/06-devinfo-dev b/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/06-devinfo-dev
> new file mode 100644
> index 000000000000..f706915ba2e8
> --- /dev/null
> +++ b/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/06-devinfo-dev
> @@ -0,0 +1,6 @@
> +
> +Let's pick another device out of the list: HTIF. We can display some extra
> +info with `devinfo`. (Use the tab completion to avoid writing it all out!)
> +```
> +devinfo 40008000.htif.of
> +```
> diff --git a/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/07-mw b/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/07-mw
> new file mode 100644
> index 000000000000..4278f8f391bd
> --- /dev/null
> +++ b/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/07-mw
> @@ -0,0 +1,9 @@
> +
> +We see that the device has a memory mapped I/O region of 8 bytes that
> +can be used for communication. Poking 0x010100000000002e in little-
> +endian into that region should print a period '.'.
> +Let's do that quad-word memory write (`mw -q`) 80 times by having a shell
> +local variable keep count:
> +```
> +i=0; while [ $i -lt 80 ]; do mw -q 0x40008000 0x010100000000002e; let i=$i+1; done
> +```
> diff --git a/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/08-devfs b/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/08-devfs
> new file mode 100644
> index 000000000000..b117e4bb1632
> --- /dev/null
> +++ b/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/08-devfs
> @@ -0,0 +1,8 @@
> +
> +`mw` is complemented by `md` for memory display. There are further commands
> +like `mm` (memory modify), `memcpy` and `memcmp` (copy/compare ranges).
> +These commands operate on `/dev/mem` by default, but any seekable device
> +or file can be used instead. Let's see what device files we got here:
> +```
> +ls /dev
> +```
> diff --git a/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/09-partitions b/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/09-partitions
> new file mode 100644
> index 000000000000..552ab2ab1e51
> --- /dev/null
> +++ b/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/09-partitions
> @@ -0,0 +1,9 @@
> +
> +The `mtdram0` looks interesting. That's the 64K SRAM at the start of the
> +address space. The virtual machine places the boot "rom" there as well
> +as the flattened (compiled) device tree (FDT). barebox can be informed
> +about partitioning and will create extra devices for each partition.
> +This allows you to reference them from commands easily:
> +```
> +of_dump -f /dev/mtdram0.fdt
> +```
> diff --git a/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/10-environment b/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/10-environment
> new file mode 100644
> index 000000000000..d1a6f85119f7
> --- /dev/null
> +++ b/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/10-environment
> @@ -0,0 +1,8 @@
> +
> +Not all of the 64K is used, so the barebox board support here uses
> +the unused mtd-ram space for saving modified environment and state.
> +The barebox environment is a file system which contains scripts, variables
> +and data:
> +```
> +ls -R /env
> +```
> diff --git a/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/11-env-data b/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/11-env-data
> new file mode 100644
> index 000000000000..81e3f47ee781
> --- /dev/null
> +++ b/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/11-env-data
> @@ -0,0 +1,12 @@
> +
> +The environment you see here is the built-in environment barebox was
> +compiled with. It contains default values for non-volatile variables,
> +(init) scripts and data. It's generated from directories on the host
> +system specified during build and stored as an archive within
> +barebox. This environment may also be compressed allowing shipping
> +larger files and even binaries. For example, this barebox binary
> +has the option CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_IKCONFIG=y,
> +which ships a copy of the used barebox configuration. See for yourself:
> +```
> +cat /env/data/config
> +```
> diff --git a/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/12-dmesg b/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/12-dmesg
> new file mode 100644
> index 000000000000..61cdd2adafbc
> --- /dev/null
> +++ b/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/12-dmesg
> @@ -0,0 +1,9 @@
> +
> +In the field, you will probably want to depend exclusively on the built-in
> +environment, but it can be very handy to persist environment changes during
> +development. You may recall that barebox told us at first boot that the
> +environment was never written?  If you don't, no problem, log messages are,
> +you guessed it, logged:
> +```
> +dmesg
> +```
> diff --git a/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/13-env-bin b/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/13-env-bin
> new file mode 100644
> index 000000000000..34b7ab554b7f
> --- /dev/null
> +++ b/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/13-env-bin
> @@ -0,0 +1,11 @@
> +
> +Let's modify the environment to add a new script (Remember
> +`help` can show you the usage, e.g. `help mw`):
> +```
> +cd /env/bin
> +echo -o putc '#!/bin/sh'
> +echo -a putc 'mw -l 0x40008000 $1'
> +echo -a putc 'mw -l 0x40008004 0x01010000'
> +cd /
> +putc 0x40 # Print an @ character
> +```
> diff --git a/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/14-env-init b/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/14-env-init
> new file mode 100644
> index 000000000000..184a4f571f8b
> --- /dev/null
> +++ b/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/14-env-init
> @@ -0,0 +1,8 @@
> +
> +We could have added the last script anywhere in `/env`. But `/env/bin` is
> +already in the executable search `PATH`, so you don't have to write out
> +the full path when invoking the script. Another special directory is
> +`/env/init`. Anything there will be sourced on shell startup.
> +Let's poke the HTIF a bit every time we start: Open a new file with
> +`edit /env/init/99-percent` and type into it `putc 0x40`.
> +
> diff --git a/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/15-magicvar b/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/15-magicvar
> new file mode 100644
> index 000000000000..ec2912da9fb9
> --- /dev/null
> +++ b/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/15-magicvar
> @@ -0,0 +1,10 @@
> +
> +As init scripts only run on initialization, we'll have to do a reset to
> +see them in action. But first, we'll want to save our tutorial progress.
> +This happens via $global.variables.  Many parts of barebox monitor reads
> +and writes to such variables to make information available to the shell.
> +
> +The `next` command also does it. How would you know?
> +```
> +magicvar
> +```
> diff --git a/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/16-env-nv b/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/16-env-nv
> new file mode 100644
> index 000000000000..3440e0194722
> --- /dev/null
> +++ b/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/16-env-nv
> @@ -0,0 +1,12 @@
> +
> +Now that you know that $global.tutorial.step holds the next step, you
> +will want to initialize it on the next reset. We could write an init shell
> +script for that, but there is something much more convenient:
> +
> +On startup, barebox needs to assign initial values for each
> +$global.variable; if a suitably named non-volatile $nv.variable already
> +exists, it will be used as initial value. Let's see what global variables
> +we got (leading asterisk '*' means it was initialized from NV):
> +```
> +global
> +```
> diff --git a/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/17-env-saveenv b/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/17-env-saveenv
> new file mode 100644
> index 000000000000..f929838138d6
> --- /dev/null
> +++ b/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/17-env-saveenv
> @@ -0,0 +1,7 @@
> +
> +Now that we have written a normal script and an init script, add a
> +nv variable to the mix, save the environment and reset to see them
> +all in action:
> +```
> +nv tutorial.step=$global.tutorial.step; saveenv; reset
> +```
> diff --git a/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/17-env-usage b/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/17-env-usage
> new file mode 100644
> index 000000000000..1f4ff37f8652
> --- /dev/null
> +++ b/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/17-env-usage
> @@ -0,0 +1,5 @@
> +
> +Welcome back! You have successfully saved the environment. Make sure
> +to reset your environment with `saveenv -z` when you are done. You wouldn't
> +want to chase ghosts, because you changed an init script and forgot about it. :)
> +
> diff --git a/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/18-mnt b/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/18-mnt
> new file mode 100644
> index 000000000000..3122e6ffa404
> --- /dev/null
> +++ b/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/18-mnt
> @@ -0,0 +1,11 @@
> +
> +We now have seen `/dev`, which holds the devfs, and `/env` which holds the
> +active environment. `/tmp` is as you have guessed it a directory where temporary
> +files can be placed. `/pstore` is short for persistent storage, a Linux
> +mechanism to store and retrieve error records even after a kernel panic.
> +
> +This leaves `/mnt`. Let's take a peek at it as well at our active mounts:
> +```
> +mount
> +ls /mnt
> +```
> diff --git a/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/19-automount b/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/19-automount
> new file mode 100644
> index 000000000000..4d4787a9a8c7
> --- /dev/null
> +++ b/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/19-automount
> @@ -0,0 +1,9 @@
> +
> +Strangely, nothing inside `/mnt` is seen in the `mount` output. Why you
> +ask? Because these are automounts that are deferred until first access.
> +So when you `bootm /mnt/nfs/boot/Image.gz` the first time, barebox will
> +bring up the network and mount the network file system (provided you do
> +have network). We can list what automounts there are:
> +```
> +automount -l
> +```
> diff --git a/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/20-mount-fs b/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/20-mount-fs
> new file mode 100644
> index 000000000000..cc5e64c66c78
> --- /dev/null
> +++ b/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/20-mount-fs
> @@ -0,0 +1,11 @@
> +
> +`/mnt/virtioblk0` is an interesting one. Block device partitions
> +automatically get automount entries created. On first access,
> +barebox will determine what file system is located in the partition
> +and mount it. Thus you can just use `/mnt/virtioblk0/DOOM1.WAD` in
> +your script and not incur the overhead of mounting unless it's accessed:
> +```
> +mount
> +ll /mnt/virtioblk0/DOOM1.WAD
> +mount
> +```
> diff --git a/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/21-state b/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/21-state
> new file mode 100644
> index 000000000000..1a71204cf5e1
> --- /dev/null
> +++ b/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/21-state
> @@ -0,0 +1,11 @@
> +
> +You'll note most file systems in barebox are read-only. While those that aren't
> +could be used with `saveenv` to store a packed environment for Linux use, that's
> +murky waters: atomicity, limiting scope, authentication and journal handling
> +complicate things. barebox state is the mechanism how barebox stores variables
> +(and only variables) in a power-fail safe manner that's also accessible to Linux.
> +
> +Check the `state` device:
> +```
> +devinfo state
> +```
> diff --git a/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/22-device-params b/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/22-device-params
> new file mode 100644
> index 000000000000..3f8d31f171d0
> --- /dev/null
> +++ b/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/22-device-params
> @@ -0,0 +1,11 @@
> +
> +The state driver parses the device tree to learn the state layout
> +and how it's (redundantly) placed. The information it learns are
> +registered with the device as device parameters. Device Parameters
> +make it easy to interact with the shell. For example, the MAC address
> +of a network adapter is a device parameter. We already saw some other
> +device parameters before. Those of the global and nv device:
> +```
> +devinfo global
> +devinfo nv
> +```
> diff --git a/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/23-device-param-types b/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/23-device-param-types
> new file mode 100644
> index 000000000000..36a311d011ac
> --- /dev/null
> +++ b/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/23-device-param-types
> @@ -0,0 +1,8 @@
> +
> +Many device parameters are simple strings, some have specific types
> +and run actions on read/write or accept only specific values.
> +`devinfo` will show you what type a variable has and writing an
> +invalid value will give you an error:
> +```
> +global.tutorial.step=non-existent
> +```
> diff --git a/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/24-boot b/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/24-boot
> new file mode 100644
> index 000000000000..90c226697310
> --- /dev/null
> +++ b/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/24-boot
> @@ -0,0 +1,12 @@
> +
> +You should now know enough about barebox' architecture, that
> +we could talk about barebox' actual function without it
> +seeming too magical: Booting.
> +
> +We still need to add that part to the tutorial though, but you
> +can check out `help boot`, `help bootm` as well as the barebox
> +documentation linked below. Also give the graphical mode a
> +try!
> +
> +Tutorial to be continued..
> +
> diff --git a/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/99-end b/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/99-end
> new file mode 100644
> index 000000000000..4744f2b3eeb8
> --- /dev/null
> +++ b/arch/riscv/boards/riscvemu/defaultenv-riscvemu/data/tutorial/99-end
> @@ -0,0 +1 @@
> +End of tutorial reached!
> diff --git a/arch/riscv/boards/riscvemu/defaultenv-riscvemu/init/90-tutorial-intro b/arch/riscv/boards/riscvemu/defaultenv-riscvemu/init/90-tutorial-intro
> new file mode 100644
> index 000000000000..716905534c94
> --- /dev/null
> +++ b/arch/riscv/boards/riscvemu/defaultenv-riscvemu/init/90-tutorial-intro
> @@ -0,0 +1,6 @@
> +source /env/data/ansi-colors
> +
> +echo -e $YELLOW
> +echo -e This is the barebox shell. See ${RED}help${YELLOW} for a listing of commands.
> +echo -e Type ${RED}next${YELLOW} for the next tutorial tip.
> +echo -e $NC
> -- 
> 2.30.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


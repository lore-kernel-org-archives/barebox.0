Delivery-date: Tue, 13 Apr 2021 09:44:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWDiw-00074u-ID
	for lore@lore.pengutronix.de; Tue, 13 Apr 2021 09:44:38 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWDiv-0003BN-KF
	for lore@pengutronix.de; Tue, 13 Apr 2021 09:44:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jbG4z/g7MUzSlGrhJaJ6Htr4SyZ2Xx9dqpUWFwK2Z2M=; b=SOy7mmw8vVRa/UOA+/WEuQ6Wo
	T/sYEskcbZVAurbspVuUdjR7murQpxoGWgCsagiqTxns1khCX1oqW5hvgnsHT3J3DE/zbpgpFRGvj
	JC32Alkrs9rIa9yz0Yu1MKWgiIl2D4KcPEBVMqi1VeLpRbw/TCWs8QJ0dj7QptTYQjAS3RdNX7lJW
	zjcN6+QupJd0YqUX0ZN1DeDENdJcL/RaDxB7lu1XvuHSZNWwc0eUN8+xIN90RE8oeOhWf9PejXdr7
	u+bKAKgdpAaef49mCojH+/lJj9llWOhozd/M8ChcXCkPA8cXtbQXTBhZhYNjAjFJjwdfzQQczqiBK
	MymKiEveg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWDgx-008X7u-5N; Tue, 13 Apr 2021 07:42:35 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWDgk-008X75-Kt
 for barebox@desiato.infradead.org; Tue, 13 Apr 2021 07:42:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=EqjJ63SdazAjYt4RHNqMwpy/34pDD0Dnq/jpUsn+Eiw=; b=vcyamUgAEU6arE2T5+WtlEsC9s
 Sm7iHbBm7etipB6ABvMbpm8mlqGdGs0aGSAbNRVDOvsc97A4QrGyEapqt8zG276FgX4/wGOCr10xY
 /PYNnp2LQE5iKB5njdPUkzpwupXviyNEfk/qCBAQHrysvW2FP8fo3HIkz9OTBar4TmJ0HJtlqseGu
 ekmsVvsJ/eqo34N9ElvhaIIHxGrdjPBtQEERv1bLEIZSu8Hn8MI734hqIe8pWy7YWrJHTXTg4b/8V
 1wlDd5hGBkovaHKkDiuGV3BCYNg4dPQo0lND0WLm3es8MUK8Ed4Cs7Hurp8k619itjQZk3NsfdP7j
 gTsDmMsQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWDgh-006oG0-UK
 for barebox@lists.infradead.org; Tue, 13 Apr 2021 07:42:21 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lWDgg-00036U-GT; Tue, 13 Apr 2021 09:42:18 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lWDge-0004Vg-Qx; Tue, 13 Apr 2021 09:42:16 +0200
Date: Tue, 13 Apr 2021 09:42:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Stafford Horne <shorne@gmail.com>
Cc: Barebox <barebox@lists.infradead.org>,
 Openrisc <openrisc@lists.librecores.org>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20210413074216.GF13990@pengutronix.de>
References: <20210304210747.3679483-1-shorne@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210304210747.3679483-1-shorne@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:42:06 up 54 days, 11:05, 87 users,  load average: 0.16, 0.10, 0.14
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210413_004219_999544_433E62CF 
X-CRM114-Status: GOOD (  24.66  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] Documentation: Add qemu instructions for OpenRISC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Mar 05, 2021 at 06:07:47AM +0900, Stafford Horne wrote:
> Most developers have qemu and rather not download and install the
> or1ksim.  Also, this adds details on how to get a openrisc toolchain.
> 
> Signed-off-by: Stafford Horne <shorne@gmail.com>
> ---
>  Documentation/boards/openrisc.rst | 68 +++++++++++++++++++++++++++++++
>  1 file changed, 68 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/Documentation/boards/openrisc.rst b/Documentation/boards/openrisc.rst
> index f9d67f965..34586b4a7 100644
> --- a/Documentation/boards/openrisc.rst
> +++ b/Documentation/boards/openrisc.rst
> @@ -1,6 +1,74 @@
>  OpenRISC
>  ========
>  
> +Optaining an OpenRISC toolchain
> +-------------------------------
> +
> +Toolchain binaries can be obtained from openrisc.io or our github releases page.
> +Instructions for building the different toolchains can be found on openrisc.io
> +or Stafford's toolchain build and release scripts.
> +
> +See:
> +
> +  * https://github.com/stffrdhrn/gcc/releases
> +  * https://github.com/stffrdhrn/or1k-toolchain-build
> +  * https://openrisc.io/software
> +
> +Example of downloading and installing a toolchain::
> +
> +  $ curl --remote-name --location \
> +    https://github.com/stffrdhrn/gcc/releases/download/or1k-10.0.0-20190723/or1k-elf-10.0.0-20190723.tar.xz
> +  $ tar -xf or1k-elf-10.0.0-20190723.tar.xz
> +  $ export PATH=$PATH:$PWD/or1k-elf/bin
> +
> +Running OpenRISC barebox on qemu
> +------------------------------
> +
> +Running barebox on qemu is similar to running linux on qemu see more details on
> +the qemu wiki site at https://wiki.qemu.org/Documentation/Platforms/OpenRISC
> +
> +Compile the qemu emulator::
> +
> +  $ git clone https://gitlab.com/qemu-project/qemu.git
> +  $ cd qemu
> +  $ mkdir build ; cd build
> +  $ ../configure \
> +    --target-list="or1k-softmmu" \
> +    --enable-fdt \
> +    --disable-kvm \
> +    --disable-xen \
> +    --disable-xkbcommon \
> +    --enable-debug \
> +    --enable-debug-info
> +  $ make
> +
> +Next compile barebox::
> +
> +  $ make ARCH=openrisc defconfig
> +  ...
> +  $ make ARCH=openrisc CROSS_COMPILE=or1k-elf-
> +
> +Run barebox::
> +
> +  $ <path to qemu source>/build/or1k-softmmu/qemu-system-or1k \
> +    -cpu or1200 \
> +    -M or1k-sim \
> +    -kernel /home/shorne/work/openrisc/barebox/barebox \
> +    -net nic -net tap,ifname=tap0,script=no,downscript=no \
> +    -serial mon:stdio -nographic -gdb tcp::10001 \
> +    -m 32
> +
> +
> +  barebox 2021.02.0-00120-g763c6fee7-dirty #14 Thu Mar 4 05:13:51 JST 2021
> +
> +
> +  Board: or1ksim
> +  mdio_bus: miibus0: probed
> +  malloc space: 0x01b80000 -> 0x01f7ffff (size 4 MiB)
> +
> +  Hit any to stop autoboot:    3
> +  barebox@or1ksim:/
> +
>  or1ksim
>  -------
>  
> -- 
> 2.26.2
> 
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


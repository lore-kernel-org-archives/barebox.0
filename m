Delivery-date: Mon, 14 Jul 2025 08:17:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ubCV4-00HJVu-1l
	for lore@lore.pengutronix.de;
	Mon, 14 Jul 2025 08:17:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ubCV3-0006JN-UY
	for lore@pengutronix.de; Mon, 14 Jul 2025 08:17:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PIYvRILtIiIVe71cqRZDfa/dDS33popC7W2BS+uEBFc=; b=X3KPKrpMM8ehSpkElAVZzVTpwO
	l02r05hrrixXwGt9BkL5579HWC8yCulO28mrSmcqaTzayrt8r2LRiIRqrzEu5eYY8uy3ac7NALi5X
	YlYL1yKTN4dIGTOP4NRKQOHq6t38KHBKC2T94H0YjMC0eOVYOHLNnY8gB4oYOcn1nKAAfjOY+LLVN
	WHFbOlhzvakauFebfr1bi5q6YUsBxQ12vCs0b+8I8fHaQt0VaGcnSuXuSwnEo+03yZXFvEpd8sqBq
	rb6nyJ3sSjTqlG1ZGSkSzc9C1heO8nSu/k5sSsCsXJ8U7PaRFCP2dzUscLuEwGTZlyPi0MAgpYy75
	l0hL9Lvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubCUE-00000001JMD-2SoL;
	Mon, 14 Jul 2025 06:16:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubCIM-00000001HGc-1qyx
	for barebox@lists.infradead.org;
	Mon, 14 Jul 2025 06:04:12 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ubCII-0008Vq-N4; Mon, 14 Jul 2025 08:04:06 +0200
Message-ID: <fa7b6ccd-daa8-484f-bda0-9ed34a39b3c5@pengutronix.de>
Date: Mon, 14 Jul 2025 08:04:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Johannes Roith <johannes@gnu-linux.rocks>, s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org, a.fatoum@barebox.org
References: <20250704192658.18037-1-johannes@gnu-linux.rocks>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250704192658.18037-1-johannes@gnu-linux.rocks>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250713_230410_487286_A21B2E8A 
X-CRM114-Status: GOOD (  17.99  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] Added documentation for the Zynq 7000
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 04.07.25 21:26, Johannes Roith wrote:
> Added documentation and build instructions for the Zynq 7000 and the
> Avnet Zedboard.
> 
> Signed-off-by: Johannes Roith <johannes@gnu-linux.rocks>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Thank you!
Ahmad

> ---
>  Documentation/boards/zynq.rst | 25 +++++++++++++++++++++++++
>  1 file changed, 25 insertions(+)
>  create mode 100644 Documentation/boards/zynq.rst
> 
> diff --git a/Documentation/boards/zynq.rst b/Documentation/boards/zynq.rst
> new file mode 100644
> index 0000000000..b7aaf3892c
> --- /dev/null
> +++ b/Documentation/boards/zynq.rst
> @@ -0,0 +1,25 @@
> +Xilinx Zynq 7000
> +================
> +
> +Barebox has support for the Xilinx Zynq 7000.
> +
> +Image creation
> +--------------
> +
> +The Zynq defconfig supports the Avnet ZedBoard. Use it to build the Barebox image::
> +
> +   make ARCH=arm zynq_defconfig
> +   make ARCH=arm
> +
> +Create a FAT partition as the first partition of the SD card and copy the
> +produced image ``images/barebox-avnet-zedboard.img`` into this partition.
> +Rename the image to ``BOOT.bin`` which is the name the Primary Bootloader of the
> +Zynq 7000 expects for the next stage.
> +
> +Bitstream loading
> +-----------------
> +
> +The Zynq 7000 features an ARM Cortex-A9 processor (Processing System, PS)
> +alongside a Programmable Logic (PL) component that functions as an FPGA. Barebox
> +provides support for loading a bitstream into the PL through its firmware
> +interface.


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



Delivery-date: Mon, 22 Mar 2021 05:42:06 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lOCOE-0002ve-05
	for lore@lore.pengutronix.de; Mon, 22 Mar 2021 05:42:06 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lOCOD-0001kb-AS
	for lore@pengutronix.de; Mon, 22 Mar 2021 05:42:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=53nGp/aqAfMv+Kaxvs2TzwrR6YRkaypNLALCV6OztYc=; b=KZboVwhkm8xJZTsUspILWg3Ao
	NV3mhk9/TULt0+KeFQctGVKtC8WbsO7ayPqIyWufdWSp5BUSeOse1alUd6XHXseSXzTJaiPIusy/t
	Uygu08doO3J1VohEdxSo6p+YWVCSqSioElq/qrMcNFp2btIBm+6BcYB7vWUPZ0GRuDO7dafY5Cf5K
	MoQDKqvcKGod5JHzdBR1o3f6C5sFiZypm2GfiwZuv+pw03jcZKDPMoX7UKvVKOhKwt2RyJ5j/ax3m
	DWMMSJfUT4sTjUBpz0+UesY5IQtYbuJjYNRH5xSNbjNWSNJ078rlyYVfvXVY+9CuLYa28mRL/t1Cc
	vipmlNtgg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lOCNL-00ArYX-SR; Mon, 22 Mar 2021 04:41:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lOCN5-00ArXj-N9
 for barebox@lists.infradead.org; Mon, 22 Mar 2021 04:40:58 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lOCN5-0001Y8-AA; Mon, 22 Mar 2021 05:40:55 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lOCN4-0003qa-N7; Mon, 22 Mar 2021 05:40:54 +0100
Date: Mon, 22 Mar 2021 05:40:54 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20210322044054.GG23724@pengutronix.de>
References: <20210319101327.162176-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210319101327.162176-1-antonynpavlov@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 05:40:43 up 32 days,  8:04, 49 users,  load average: 0.18, 0.28, 0.18
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210322_044055_875386_71EF234B 
X-CRM114-Status: GOOD (  20.58  )
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
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] Documentation: mips: fixup qemu-system-mipsel cmdline
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Mar 19, 2021 at 01:13:27PM +0300, Antony Pavlov wrote:
> Fix spelling mistake introduced in the commit 2ab6d2a76994
> ("MIPS: qemu-malta_defconfig: enable VGA output").
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---

Applied, thanks

Sascha

>  Documentation/boards/mips/qemu-malta.rst | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/boards/mips/qemu-malta.rst b/Documentation/boards/mips/qemu-malta.rst
> index 470be32f1f..e188ae8c64 100644
> --- a/Documentation/boards/mips/qemu-malta.rst
> +++ b/Documentation/boards/mips/qemu-malta.rst
> @@ -33,7 +33,7 @@ QEMU run string:
>  .. code-block:: sh
>  
>    qemu-system-mipsel -nodefaults -M malta -m 256 \
> -      -devica VGA -serial stdio -monitor null \
> +      -device VGA -serial stdio -monitor null \
>        -bios barebox-flash-image
>  
>  
> -- 
> 2.30.1
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


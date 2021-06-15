Delivery-date: Tue, 15 Jun 2021 19:49:02 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltDBO-0003KT-TL
	for lore@lore.pengutronix.de; Tue, 15 Jun 2021 19:49:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltDBM-0003qJ-VD
	for lore@pengutronix.de; Tue, 15 Jun 2021 19:49:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5Lr5zXXLsTQGrSNuNYFr8oW9y5+UXlyxxFx0n6iEv0k=; b=MVw0CtXNWDRdyE
	jQ/XWlTXVakRQocKAv1JDN5m5lXavVIhF6JAEioza4wiytwGJF1fjkihC6zRJfKpkZZ6Hgz0gJt0V
	4Uh548n6+MTEuPg7V3o5ojoVhXOtvh2v9Ktd8ywR4J+GgQ4hj8vELunWrU/5CETGw4MsorGNY22bL
	xgs3Y7VoNRhw2iM0t228x/QsmWi05t1ZH6KnhMeMZduJARSXxMQe+tidvy6bCv34YGFnzCmluDulX
	oPUP06bH+gYqBcrK71Rv85lDU5kDu4e9gREjnkGx9OiHBreKEK6K6SQWfQl8/PKWPoZBosqqP9l/6
	/jPzeBh5Ej9J7fUHTrEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltD9g-001r58-Ie; Tue, 15 Jun 2021 17:47:17 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lt9IK-000DEY-9E
 for barebox@bombadil.infradead.org; Tue, 15 Jun 2021 13:39:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=3GN4WE8LqflYJFOHDXg+8k3Jh4NdtXGcoTj6jgCrEAQ=; b=GXvGAQMa3MyMIzfTdTVycoX6iz
 Zex3eUsEohqeQ+cJ6HLSC44+NOnoQ2M2PL2KUMxpABwA1hQGrLXl/kUyODvhJOOYz18gt5C3Nr7LY
 IhcwIT1Hlafz4YfqVhIbj0ZzlM05E1DNxzot+B88GcB8UrlhF71n/9PhSG0ulrVIXXLdQOiTYWaRy
 Rneyk+m2KTsWh4qq2RG4R6HOs2WbzCpPxr+AxbGy7Kq+0EvPEQFt1SV32PnLhntdsciYdm/mXIfHT
 gnbESfMKrtjdcYaTPn5IXa4CXGb3tCikYJGOZiOKtZUJqGthk7A7gz8QhC/gVKfQwburRmFboO8uU
 Kr2MZhGw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lt5BV-007YFt-TG
 for barebox@lists.infradead.org; Tue, 15 Jun 2021 09:16:46 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lt5Bc-0005oa-7D; Tue, 15 Jun 2021 11:16:44 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lt5Bb-0007H1-Pj; Tue, 15 Jun 2021 11:16:43 +0200
Date: Tue, 15 Jun 2021 11:16:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20210615091643.GG9782@pengutronix.de>
References: <20210614142753.86477-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210614142753.86477-1-antonynpavlov@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:16:35 up 117 days, 12:40, 119 users,  load average: 0.04, 0.11,
 0.15
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210615_101644_799918_D164E8BA 
X-CRM114-Status: GOOD (  21.99  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] Documentation: RISC-V: erizo: fix header level
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jun 14, 2021 at 05:27:53PM +0300, Antony Pavlov wrote:
> The "Running on DE0-Nano FPGA board" is a "Erizo" subsection
> not independent section.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  Documentation/boards/riscv.rst | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/Documentation/boards/riscv.rst b/Documentation/boards/riscv.rst
> index 59cdc00a99..387b86c588 100644
> --- a/Documentation/boards/riscv.rst
> +++ b/Documentation/boards/riscv.rst
> @@ -122,7 +122,7 @@ Run barebox::
>  
>  
>  Running on DE0-Nano FPGA board
> -------------------------------
> +~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>  
>  See https://github.com/open-design/riscv-soc-cores/ for instructions
>  on DE0-Nano bitstream generation and loading.
> -- 
> 2.32.0.rc0
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


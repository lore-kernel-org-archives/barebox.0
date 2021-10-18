Delivery-date: Mon, 18 Oct 2021 08:48:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mcMS3-0005Df-9D
	for lore@lore.pengutronix.de; Mon, 18 Oct 2021 08:48:51 +0200
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mcMRz-0007rF-9L
	for lore@pengutronix.de; Mon, 18 Oct 2021 08:48:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=EPIje7GG3W8TXokmSgwP4vlO/Gmtx3PJqELsuTFuuGM=; b=lHwCTNyO263i30RJeXuZcVOO0W
	f/813Rp5uKy7dR82IyFpvTCXmYY0IOc6zHBmUsM7W9f5FWjCsZ5mvdDT5yr4LWtPA0SUupFdrNs8V
	oIdiQLIn0CNVBlOpr6h+KWRyERKKI4gNaZvnR5PomwdltmqEStSmL0DumRskfZcCSJGE/LDD7mn5I
	zReZ0/cbNmkL7AKdhC+cYMoLFu3Sg/S76M72CRVvaBU6EowExtJsAPulZKDtcZWbP446Lyb+xteFX
	7geSlZKnbYwVvNWZwBC5Bm/W5T4oUwPGaFzC21b+5j9gnPFrxq+ZmTw0eH7lvUHa95yFtLGUBKIFy
	v26VrBxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mcMQG-00EN1V-Dr; Mon, 18 Oct 2021 06:47:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mcMQB-00EN01-F3
 for barebox@lists.infradead.org; Mon, 18 Oct 2021 06:46:57 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mcMQ7-0007jn-FU; Mon, 18 Oct 2021 08:46:51 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mcMQ7-0003yv-68; Mon, 18 Oct 2021 08:46:51 +0200
Date: Mon, 18 Oct 2021 08:46:51 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20211018064651.GE25698@pengutronix.de>
References: <20211015160544.5783-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211015160544.5783-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:46:42 up 242 days, 10:10, 109 users,  load average: 0.15, 0.13,
 0.17
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211017_234655_526032_37653463 
X-CRM114-Status: GOOD (  27.80  )
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
X-Host-Lookup-Failed: Reverse DNS lookup failed for 2607:7c80:54:e::133 (failed)
X-Broken-Reverse-DNS: no host name for IP address 2607:7c80:54:e::133
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,PTX_BROKEN_RDNS,RCVD_IN_DNSWL_MED,RDNS_NONE,
	SPF_HELO_NONE,SPF_NONE autolearn=no autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] ARM: psci: client: fix power off and reset via
 64-bit secure monitor
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Oct 15, 2021 at 06:05:44PM +0200, Ahmad Fatoum wrote:
> The PSCI function code is a 32-bit integer > 0x80000000, but the
> the PSCI client code erroneously casted it to a signed integer.
> 
> On 32-bit systems, the cast later on to unsigned long restored the
> original value, but on 64-bit system, we passed a very large 64-bit
> number in the secure monitor call because of the sign extension.
> 
> This worked because TF-A seems to ignore the upper 32-bits anyway,
> (tested with i.MX8MN), but for other secure monitors like the default
> HVC implementation for QEMU ARM64 Virt machine this didn't hold true
> for all commands, leading to aborts when doing reset or poweroff.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/cpu/psci-client.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/cpu/psci-client.c b/arch/arm/cpu/psci-client.c
> index b5d0d3749702..7d5b3768b59e 100644
> --- a/arch/arm/cpu/psci-client.c
> +++ b/arch/arm/cpu/psci-client.c
> @@ -15,7 +15,7 @@
>  
>  static struct restart_handler restart;
>  
> -static void __noreturn psci_invoke_noreturn(int function)
> +static void __noreturn psci_invoke_noreturn(ulong function)
>  {
>  	int ret;
>  
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


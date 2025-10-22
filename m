Delivery-date: Wed, 22 Oct 2025 17:25:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBaif-00AeOQ-36
	for lore@lore.pengutronix.de;
	Wed, 22 Oct 2025 17:25:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBaif-00078n-Dx
	for lore@pengutronix.de; Wed, 22 Oct 2025 17:25:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EETAcbXy4YJk8t0a3EvIO/SdNxMvGkA9uks97QEl6Ro=; b=D3IuHpmXerZ/dCnoZFI4SzM+NJ
	MfFsic8zJuYbtFLJcdWmApmESWWV/oj7JECTyCoSCVIv2XAPxRSmWUfJ50G7DQTA40+3saA/+forr
	+L2y4PA1KLkFxTVT1K/hdlbpILxz3RkXQYKT9S/QDWcUAUEFfKgrG7njZhH8FRLloz43qzbv58F5Z
	0VDJ7vTwJNRMazDw4Ne0LOHWs2M5nuUtLqs9fIuIOLUrkQn2BLUeY/Ji1pnBzuF0LgRr88Q+hE/mN
	jPbyOzUM5BEVa4lC0vL0NjrMJ4PCdfASLTW3Q9xEspjChxUxYUECsf9kunHG2YEMA07trOZwaRdXu
	99SeHOzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBaiA-00000003OCy-0J4q;
	Wed, 22 Oct 2025 15:25:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBai4-00000003O9X-1HgW
	for barebox@lists.infradead.org;
	Wed, 22 Oct 2025 15:25:12 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vBai0-00071g-Vy
	for barebox@lists.infradead.org; Wed, 22 Oct 2025 17:25:05 +0200
Message-ID: <02d77e10-6085-4a7e-93a6-d75cfbbfa016@pengutronix.de>
Date: Wed, 22 Oct 2025 17:25:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: BAREBOX <barebox@lists.infradead.org>
References: <20251022150842.2222854-1-a.fatoum@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20251022150842.2222854-1-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251022_082510_921843_91498B8E 
X-CRM114-Status: GOOD (  18.54  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] MAKEALL: do not early abort initial "probe"
 defconfig sourcing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 10/22/25 5:08 PM, Ahmad Fatoum wrote:
> The sed line recently introduced to report the shuffle seed to track down an
> issue introduced an issue of its own: It exits after getting the
> --shuffle argument. This early SIGPIPE means that the sub-make is not
> invoked and the .config is not written...
> 
> Fix this by running sed until the end and just taking the first line.

That's it now hopefully. Test run on top of master is green:
https://github.com/a3f/barebox/actions

> 
> Fixes: 48bdea6b4bb0 ("MAKEALL: print --shuffle seed used for initial make *_defconfig")
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  MAKEALL | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/MAKEALL b/MAKEALL
> index b953da9cccdd..bfc0f917aca8 100755
> --- a/MAKEALL
> +++ b/MAKEALL
> @@ -135,7 +135,7 @@ do_build_defconfig() {
>  	[ -n "$logdir" ] && mkdir -p "${logdir}/${defconfig}"
>  
>  	MAKE="make -j${JOBS} ARCH=${arch} O=${BUILDDIR}"
> -	shuffle=$(${MAKE} --debug=basic ${defconfig} 2>&1 | sed -n 's/.*Enabled shuffle mode: //p;T;q')
> +	shuffle=$(${MAKE} --debug=basic ${defconfig} 2>&1 | sed -n 's/.*Enabled shuffle mode: //p' | head -n1)
>  
>  	if [ -n "$shuffle" ]; then
>  		report "Probing ${arch} ${defconfig} (--shuffle=$shuffle)\n" >&2

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |




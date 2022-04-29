Delivery-date: Fri, 29 Apr 2022 09:13:00 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nkKoI-001kof-4L
	for lore@lore.pengutronix.de; Fri, 29 Apr 2022 09:13:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nkKoF-000779-Gw
	for lore@pengutronix.de; Fri, 29 Apr 2022 09:13:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VbEPmvPcoSwvGrVIdFGlCMUAGvZqXN7sHEDHSADXE/A=; b=pXDXjz1tZHB+LVliH2LBGExoy/
	bJrDgqdxzo1hB1ayW5UhaJrFNagw9qbgxLoZwwVAO1xNc8rZpdB+Y5XHTruVBaWFexHGzPbS0UiaR
	gW2tRyQi2jAuXNpIQoADBqRDAyB7mfktJs5cbllt14hwM3EcMaHoIFv0jvSpM/QeUVJOmXqfXIkTb
	D7Bx72mSN393p0IAu53q9XbyzpRWKFN3EwGV/HQI+eJ8xfA+0fVYMIdkypZ586/URMHnKWJHlHFHN
	nG9mPNYrgLw5Om1MRWRto4p0SV3bUXA43nzFkUTNzS2cFsCX7Iawgzhs2+6WxGUMjaIyDwv+QekDe
	kh8WOXCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nkKn3-009vqz-BP; Fri, 29 Apr 2022 07:11:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nkKmy-009vq2-J6
 for barebox@lists.infradead.org; Fri, 29 Apr 2022 07:11:42 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nkKmx-0006sd-DD; Fri, 29 Apr 2022 09:11:39 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nkKmx-0003wR-3u; Fri, 29 Apr 2022 09:11:39 +0200
Date: Fri, 29 Apr 2022 09:11:39 +0200
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20220429071139.GO4012@pengutronix.de>
References: <20220426064658.423912-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220426064658.423912-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:11:29 up 29 days, 19:41, 77 users,  load average: 0.12, 0.20, 0.25
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220429_001140_665251_E1841807 
X-CRM114-Status: GOOD (  22.12  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] Documentation: remote-control: be explicit about python2
 requirement
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Apr 26, 2022 at 08:46:58AM +0200, Ahmad Fatoum wrote:
> This should help users a bit when using the tool.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  Documentation/user/remote-control.rst | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied to master, thanks

Sascha

> 
> diff --git a/Documentation/user/remote-control.rst b/Documentation/user/remote-control.rst
> index c8b7442f175a..43f1fb3118ea 100644
> --- a/Documentation/user/remote-control.rst
> +++ b/Documentation/user/remote-control.rst
> @@ -54,7 +54,7 @@ account via:
>  
>  .. code-block:: sh
>  
> -  pip install --user crcmod enum enum34
> +  python2 -m pip install --user crcmod enum enum34
>  
>  configuring bbremote
>  ^^^^^^^^^^^^^^^^^^^^
> -- 
> 2.34.1
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


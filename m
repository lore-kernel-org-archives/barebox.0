Delivery-date: Tue, 19 Aug 2025 09:36:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uoGtS-002ABK-2v
	for lore@lore.pengutronix.de;
	Tue, 19 Aug 2025 09:36:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uoGtR-00089f-OL
	for lore@pengutronix.de; Tue, 19 Aug 2025 09:36:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qTDM01ZWGCDtDyVL271wNd+Lnjem1/ctNXonO4YPUbM=; b=nhQAmV4jZ/mMb9QRWHnrCb9To1
	YPKIIPb5Rfm/t45VY13eK4RFcWRekZ9pbjXb0R8M6Q4cps5BEPBpV53+yQ0JIFZ4PRMMCImuLRLw/
	9bUyn2XEcJQs493Tp4S1XwjVnC88WORbuOSTFk13r+0SgMqJVmOh+FU9ovsp8iqQvtKjgy5J1nCNq
	fqsDDKEHKLDjSSpYEEsP57lGce5ROPiovOSy/fRkUHWmS0X5AAVyR4YQQ28BXBxCrX1fQjF33E6I1
	hweFHudxFBmKmO31AvED8W3sIQrixSLK9lytmxyivgL31oWvZf1Y5+QEspYB13tff3Ik/oVt7QsXv
	nUJGKPbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoGsr-00000009h3C-302B;
	Tue, 19 Aug 2025 07:35:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoGN6-00000009bq4-0Sp4
	for barebox@lists.infradead.org;
	Tue, 19 Aug 2025 07:03:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uoGN4-0003gb-Re; Tue, 19 Aug 2025 09:03:02 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uoGN4-0011wL-2A;
	Tue, 19 Aug 2025 09:03:02 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uoGN4-003kku-1o;
	Tue, 19 Aug 2025 09:03:02 +0200
Date: Tue, 19 Aug 2025 09:03:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <aKQhpqWmUjZvWdfY@pengutronix.de>
References: <20250818-v2024-05-0-topic-fit-overlay-v5-0-b92e466a1d32@pengutronix.de>
 <20250818-v2024-05-0-topic-fit-overlay-v5-9-b92e466a1d32@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250818-v2024-05-0-topic-fit-overlay-v5-9-b92e466a1d32@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250819_000304_179491_6F404DDA 
X-CRM114-Status: GOOD (  23.91  )
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
Subject: Re: [PATCH v5 09/11] FIT: fit_open: make filename handling more
 robust
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Aug 18, 2025 at 07:26:17PM +0200, Marco Felsch wrote:
> Require the filename to start at the root '/' directory and resolve any
> possible link to make the filename handling more robust.
> 
> This is in preparation of adding cached fit_open support.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  common/image-fit.c | 18 +++++++++++++++++-
>  1 file changed, 17 insertions(+), 1 deletion(-)
> 
> diff --git a/common/image-fit.c b/common/image-fit.c
> index 0067f46e60bc954b418aef3398e2c10856b41c02..1cb407d4d86cb3d0a643149bb08c46caadcd56fe 100644
> --- a/common/image-fit.c
> +++ b/common/image-fit.c
> @@ -972,12 +972,25 @@ struct fit_handle *fit_open_buf(const void *buf, size_t size, bool verbose,
>   *
>   * Return: A handle to a FIT image or a ERR_PTR
>   */
> -struct fit_handle *fit_open(const char *filename, bool verbose,
> +struct fit_handle *fit_open(const char *_filename, bool verbose,
>  			    enum bootm_verify verify, loff_t max_size)
>  {
>  	struct fit_handle *handle;
> +	char *filename;
>  	int ret;
>  
> +	if (*_filename != '/') {
> +		pr_err("The FIT filename must start with '/'\n");
> +		return ERR_PTR(-EINVAL);
> +	}

Drop this. We want to be able to call fit_open() with relative pathes...

> +
> +	/* dirfd is ignored, since _filename is absolute */
> +	filename = canonicalize_path(AT_FDCWD, _filename);

...and you are calling canonicalize_path() anyway which gives you an
absolute path from the potentially relative input path.

> +	if (!filename) {
> +		pr_err("Failed to resolve %s with %s\n", _filename, strerror(errno));

		pr_err("Cannot open %s: %m\n", filename);

I think the "Failed to resolve" is misleading here.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



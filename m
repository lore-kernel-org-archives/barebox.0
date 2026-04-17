Delivery-date: Fri, 17 Apr 2026 11:14:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDfHX-00D8dW-29
	for lore@lore.pengutronix.de;
	Fri, 17 Apr 2026 11:14:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDfHW-0004uS-V3
	for lore@pengutronix.de; Fri, 17 Apr 2026 11:14:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=msymkZT4tuKA+ZQQXT/IJf9FhoNy7OucDD+497dqehI=; b=PvQKiluXrt9tCqB6vp/oQM6hU/
	OloLNanLQLlw7apTlCSOuo4VUJDnjK7YFVwBRF/kxgTryWfcQtURu+oL1gl53OcarkYp0vtMZ7W56
	0Q7+dTdvAiYvCoZXqyXzNjCIWsSsm+WU6RQbPjPgMNzJ3VYunGj5+XnG0nryNBwDmvHqA43X5+Xgc
	n8B3tI3cz5wWxVK32Iogp1C17A0RjAEhgPX1NU6qoBacw119ry/DOR3cdbOjnXz1ixAjgSweIhlUv
	waONPGomXuRt+n+MOSKxfm8IDThnt+tfOLxCi1T7TfdJF8t8USSp/T/tWV9LvNDzrBd7RGK3PG0Ez
	31cg3YlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDfH8-00000003jup-1Ypr;
	Fri, 17 Apr 2026 09:14:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDfH6-00000003juP-09sP
	for barebox@lists.infradead.org;
	Fri, 17 Apr 2026 09:14:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1wDfH4-0004k2-5a; Fri, 17 Apr 2026 11:14:06 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1wDfH3-005pB3-3B;
	Fri, 17 Apr 2026 11:14:05 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1wDfH3-0000000FluO-3gpP;
	Fri, 17 Apr 2026 11:14:05 +0200
Date: Fri, 17 Apr 2026 11:14:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, str@pengutronix.de
Message-ID: <aeH53Z0JFPsKA_eE@pengutronix.de>
References: <20260416153455.2630276-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260416153455.2630276-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260417_021408_080832_8ADAF8A5 
X-CRM114-Status: GOOD (  27.59  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] Documentation: migration-guides: mention possible FIT
 compat break
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Apr 16, 2026 at 05:34:37PM +0200, Ahmad Fatoum wrote:
> With manually written ITS, it's easy to omit signing some of the images.
> This flew under the radar so far, but with v2026.03.0 (or v2025.09.3),
> this will lead to verification failure.
> 
> The security advisory has been updated, but it's nonetheless worth an
> addition to the migration guide.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> v1 -> v2:
>   - add same notice for v2025.09.3 as well
> ---
>  .../migration-guides/migration-2025.09.3.rst  | 21 +++++++++++++++++++
>  .../migration-guides/migration-2026.03.0.rst  | 19 +++++++++++++++++
>  2 files changed, 40 insertions(+)
>  create mode 100644 Documentation/migration-guides/migration-2025.09.3.rst
> 
> diff --git a/Documentation/migration-guides/migration-2025.09.3.rst b/Documentation/migration-guides/migration-2025.09.3.rst
> new file mode 100644
> index 000000000000..7fbea78a46d0
> --- /dev/null
> +++ b/Documentation/migration-guides/migration-2025.09.3.rst
> @@ -0,0 +1,21 @@
> +Release v2025.09.3
> +==================
> +
> +FIT Images
> +----------
> +
> +The fix for `CVE-2026-33243 <https://nvd.nist.gov/vuln/detail/CVE-2026-33243>`_
> +has the side effect that barebox after v2026.03.0 will not boot a signed

Shouldn't we mention the corresponding stable versions here?

> +configuration that excludes some images from the signature.
> +
> +Previously, it was possible to generate readily exploitable FIT images
> +by omitting them from ``sign-images`` in the ITS.
> +
> +If a FIT fails to boot with **v2026.03.1**, when it succesfully booted
> +v2026.02.0 or earlier, it's likely that it was vulnerable even without

and here?

Sascha

> +knowledge of CVE-2026-33243.
> +
> +Recommendation is to not write FIT ITS manually, but to use higher level
> +tooling that generates the ITS and feeds it to ``mkimage(1)``.
> +
> +For more details, refer to the `security advisory <https://github.com/barebox/barebox/security/advisories/GHSA-3fvj-q26p-j6h4>`_.
> diff --git a/Documentation/migration-guides/migration-2026.03.0.rst b/Documentation/migration-guides/migration-2026.03.0.rst
> index 1bd06ac7b743..f23001886b8b 100644
> --- a/Documentation/migration-guides/migration-2026.03.0.rst
> +++ b/Documentation/migration-guides/migration-2026.03.0.rst
> @@ -8,3 +8,22 @@ On NXP i.MX8MP the SoC UID was read out wrong. It really is 128bit from which
>  barebox only read 64bit. barebox now does it correctly, but rolled out devices
>  might depend on the SoC UID being constant. In that case
>  CONFIG_ARCH_IMX8MP_KEEP_COMPATIBLE_SOC_UID should be enabled.
> +
> +FIT Images
> +----------
> +
> +The fix for `CVE-2026-33243 <https://nvd.nist.gov/vuln/detail/CVE-2026-33243>`_
> +has the side effect that barebox after v2026.03.0 will not boot a signed
> +configuration that excludes some images from the signature.
> +
> +Previously, it was possible to generate readily exploitable FIT images
> +by omitting them from ``sign-images`` in the ITS.
> +
> +If a FIT fails to boot with **v2026.03.1**, when it succesfully booted
> +v2026.02.0 or earlier, it's likely that it was vulnerable even without
> +knowledge of CVE-2026-33243.
> +
> +Recommendation is to not write FIT ITS manually, but to use higher level
> +tooling that generates the ITS and feeds it to ``mkimage(1)``.
> +
> +For more details, refer to the `security advisory <https://github.com/barebox/barebox/security/advisories/GHSA-3fvj-q26p-j6h4>`_.
> -- 
> 2.47.3
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



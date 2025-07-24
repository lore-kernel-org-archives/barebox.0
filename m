Delivery-date: Thu, 24 Jul 2025 15:53:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uewNk-003GMj-2U
	for lore@lore.pengutronix.de;
	Thu, 24 Jul 2025 15:53:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uewNk-0001Oj-6x
	for lore@pengutronix.de; Thu, 24 Jul 2025 15:53:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PDdET6wo76sjLhXml1KQ1GMSLRZ4eVM8leyKq50nUy0=; b=EUyDRE4NADGIAUmJXTY9650g3t
	jdnoV+UpxNWfHHxwUdETCFYTm5id0kwAC0cZYJE1UxlRgoKiDbUpNMz+9bVv8lZR6SbK2kuKzRpFr
	iiJlNzzXkzuOodmLnoU+uOxgP0FVdnB2H2hxXCIdOll876jhzgBDuiP5WfMH1IPALbbSM56ryjecM
	29XdYLJRjFakFUWVEpjukeY1Xo7ISoTVLnBup2EETxUiDY1KUlumeBcBZQZCZiahKAeDRofBB14hv
	Yg2+Ry0cTQqiSrOij0Sl4NjvDTwY7ql1nHxMiYnOy4tUCBXrOBYO3e+k06C+vTUF6ADsKdp1n3inH
	a+jBT+CQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uewMy-00000007YvW-1kyV;
	Thu, 24 Jul 2025 13:52:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uesus-00000007AoP-0itu
	for barebox@lists.infradead.org;
	Thu, 24 Jul 2025 10:11:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1uesup-0002iN-Kh
	for barebox@lists.infradead.org; Thu, 24 Jul 2025 12:11:07 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uesup-00A2PG-1T
	for barebox@lists.infradead.org;
	Thu, 24 Jul 2025 12:11:07 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uesup-0036Kh-18
	for barebox@lists.infradead.org;
	Thu, 24 Jul 2025 12:11:07 +0200
Date: Thu, 24 Jul 2025 12:11:07 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Message-ID: <20250724101107.odutzn53sxydsmew@pengutronix.de>
References: <20250723132831.519984-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250723132831.519984-1-m.felsch@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250724_031110_209859_8604A1CF 
X-CRM114-Status: GOOD (  17.77  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] keytoc: fix env provided keyspec handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 25-07-23, Marco Felsch wrote:
> Currently the env provided keyspec is resolved during the gen_key() step
> by making use of the try_resolve_env(). This is wrong because it will
> set the complete <hint>:<key> string for the 'keyname' and 'path'.
> 
> To fix this the resolve step must happen during the main-loop as first step
> because the main-loop is doing the 'keyname' and 'path' split already.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  scripts/keytoc.c | 13 +++++--------
>  1 file changed, 5 insertions(+), 8 deletions(-)
> 
> diff --git a/scripts/keytoc.c b/scripts/keytoc.c
> index c92465707f65..c1e8c51d7a7e 100644
> --- a/scripts/keytoc.c
> +++ b/scripts/keytoc.c
> @@ -615,10 +615,6 @@ static int gen_key(const char *keyname, const char *path)
>  	char *tmp, *key_name_c;
>  
>  	/* key name handling */
> -	keyname = try_resolve_env(keyname);
> -	if (!keyname)
> -		exit(1);
> -
>  	tmp = key_name_c = strdup(keyname);
>  
>  	while (*tmp) {
> @@ -628,10 +624,6 @@ static int gen_key(const char *keyname, const char *path)
>  	}
>  
>  	/* path/URI handling */
> -	path = try_resolve_env(path);
> -	if (!path)
> -		exit(1);
> -
>  	if (!strncmp(path, "pkcs11:", 7)) {
>  		ret = engine_get_pub_key(path, &key);
>  		if (ret)
> @@ -709,6 +701,11 @@ int main(int argc, char *argv[])
>  		char *keyname = NULL;
>  		char *path, *freep = NULL;
>  
> +		/* Check if the keyspec is provided by the ENV first */
> +		keyspec = try_resolve_env(keyspec);

This throws a warning which I didn't noticed.. I will send a v2.

Regards,
  Marco


> +		if (!keyspec)
> +			exit(1);
> +
>  		if (!strncmp(keyspec, "pkcs11:", 7)) {
>  			path = keyspec;
>  		} else {
> -- 
> 2.39.5
> 
> 
> 



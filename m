Delivery-date: Wed, 03 Jan 2024 15:11:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL1xZ-0023vQ-2j
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 15:11:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL1xY-00033q-OG
	for lore@pengutronix.de; Wed, 03 Jan 2024 15:11:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Mdqf+H6XAyapMc9sYDxQZyN82HklmzUQ0WcPFsITzNw=; b=rnEHzpwdiI4j4hbaQinoJL6yl0
	FtI09RD8f4CIrShs8qfBgSHRuZj0LjkFYp+j6gyIoEcMcE+MfkZkFVVb4G8wGBBS1SHE8aTvtnTKR
	I2d2GAk8c3EM8J78uF7+V0sFdn9mf++lheEmFIJ/Wn1H+S8YeN5JRRYmEEc8XMgaULyxp33b7Ek9u
	OBlHe7psNm6F7lecqytICmF5Gs7rTuWADhPsswsgW/pqf2gLBdtuqTttyrDEILHNTkn3pxJ8OWIk6
	iIz5vkMyuNxdJ1dos0robwIgTbi3e1xlWpcCTjTf6M9RdKOnPwTA0HHhRqvdpf7byHxkQ18P7VbkD
	EP160zwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL1wb-00B49t-0f;
	Wed, 03 Jan 2024 14:10:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL1wY-00B495-2M
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 14:10:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rL1wX-0002lp-HZ; Wed, 03 Jan 2024 15:10:01 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rL1wX-0008ZJ-4x; Wed, 03 Jan 2024 15:10:01 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rL1wX-00A4g4-2h; Wed, 03 Jan 2024 15:10:01 +0100
Date: Wed, 3 Jan 2024 15:10:01 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20240103141001.GJ1318922@pengutronix.de>
References: <20240103101344.2628970-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240103101344.2628970-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_061002_795668_69B63D5B 
X-CRM114-Status: GOOD (  23.51  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master 1/3] test: self: ramfs: fix null pointer
 dereference on error
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Jan 03, 2024 at 11:13:42AM +0100, Ahmad Fatoum wrote:
> expect_success is meant for return values of functions that return
> negative error codes and as such compares the first argument to be
> zero or greater, which means PTR_ERR_OR_ZERO will treat NULL pointers as
> valid all the same leading to NULL pointer dereferences should the test
> fail instead of a descriptive error message. Fix this by translating
> NULL pointer to -errno or -EFAULT if errno is unset.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  test/self/ramfs.c | 17 +++++++++++++----
>  1 file changed, 13 insertions(+), 4 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/test/self/ramfs.c b/test/self/ramfs.c
> index bce396dc171e..1bc2b3b068f0 100644
> --- a/test/self/ramfs.c
> +++ b/test/self/ramfs.c
> @@ -27,7 +27,16 @@ BSELFTEST_GLOBALS();
>  	__cond; \
>  })
>  
> +static inline int ptr_to_err(const void *ptr)
> +{
> +	if (ptr)
> +		return PTR_ERR_OR_ZERO(ptr);
> +
> +	return -errno ?: -EFAULT;
> +}
> +
>  #define expect_success(ret, ...) __expect((ret), (ret) >= 0, __VA_ARGS__)
> +#define expect_ptrok(ptr, ...) expect_success(ptr_to_err(ptr), __VA_ARGS__)
>  #define expect_fail(ret, ...) __expect((ret), (ret) < 0, __VA_ARGS__)
>  
>  static inline int get_file_count(int i)
> @@ -101,7 +110,7 @@ static void test_ramfs(void)
>  		}
>  
>  		dir = opendir(dname);
> -		if (!expect_success(PTR_ERR_OR_ZERO(dir), "opening parent directory"))
> +		if (!expect_ptrok(dir, "opening parent directory"))
>  			continue;
>  
>  		j = 0;
> @@ -120,11 +129,11 @@ static void test_ramfs(void)
>  	}
>  
>  	oldpwd = pushd(dname);
> -	if (!expect_success(oldpwd != NULL ? 0 : -EINVAL, "pushd()"))
> +	if (!expect_ptrok(oldpwd, "pushd()"))
>  		goto out;;
>  
>  	dir = opendir(".");
> -	if (!expect_success(PTR_ERR_OR_ZERO(dir), "opening parent directory"))
> +	if (!expect_ptrok(dir, "opening parent directory"))
>  		goto out;
>  
>  	i = 1;
> @@ -183,7 +192,7 @@ static void test_ramfs(void)
>  		expect_success(ret, "write_file()");
>  
>  		buf = read_file("test/a/b/c/d/e/f/g/h/i/j/k/l/FILE", NULL);
> -		if (expect_success(PTR_ERR_OR_ZERO(buf), "read_file()")) {
> +		if (expect_ptrok(buf, "read_file()")) {
>  			expect_success(memcmp(buf, ARRAY_AND_SIZE(hello)),
>  				       "read_file() content");
>  		}
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



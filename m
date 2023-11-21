Delivery-date: Tue, 21 Nov 2023 08:38:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5LKa-002dLZ-1k
	for lore@lore.pengutronix.de;
	Tue, 21 Nov 2023 08:38:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5LKa-0004ZM-Gv
	for lore@pengutronix.de; Tue, 21 Nov 2023 08:38:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kDQkgzZJUEBvrlJS7dqbpB4QmGzwtTnjeOs3Iu7FGbY=; b=WEOMV7NvgZXyTOFVBRVSJ8BspR
	Ni/XbzaGOhArVa5pRfVslrOo3rYN0+vJYYaF2RZWWtN4rrOYyyoildP7ZhFbxKlNzF/c+97PKp3tK
	JZ6DwSLzFfcwFbgM7FiFRIRGS3eba22eVYa1vwJYpl3TRSB/O+jTT0dvN2izhg7ycwc6ZgHXrnfWi
	TPddPLwiAIimH4expv7HdJ3m5E0kBzeTE0wYWTbupkl2rJFDmQTO1j54bSYEm/blcTJqmKnqjDvcg
	XSqUJ2mU0WawzrUtg1kvfDCBqk3+/IR0LCNLUX1AaiQHFXN4eQk6GIXYXRu511vua4paxjB4/UG/r
	/3kV7qHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5LJ5-00FuD8-2b;
	Tue, 21 Nov 2023 07:36:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5LJ2-00FuCf-0y
	for barebox@lists.infradead.org;
	Tue, 21 Nov 2023 07:36:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r5LJ0-0004FD-Ti; Tue, 21 Nov 2023 08:36:22 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r5LJ0-00AWso-H5; Tue, 21 Nov 2023 08:36:22 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r5LJ0-0035uM-Ec; Tue, 21 Nov 2023 08:36:22 +0100
Date: Tue, 21 Nov 2023 08:36:22 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231121073622.GN3359458@pengutronix.de>
References: <20231120083750.3967831-1-a.fatoum@pengutronix.de>
 <20231120083750.3967831-2-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231120083750.3967831-2-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231120_233625_138586_300B53CD 
X-CRM114-Status: GOOD (  25.50  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH RFC 2/3] libfile: implement read_fd counterpart to
 read_file
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Nov 20, 2023 at 09:37:49AM +0100, Ahmad Fatoum wrote:
> Files opened with O_TMPFILE have no name, so read_file can't be used
> with them. Therefore add a read_fd function, which slurps all a file's
> contents into a buffer.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  include/libfile.h |  2 ++
>  lib/libfile.c     | 44 ++++++++++++++++++++++++++++++++++++++++++++
>  2 files changed, 46 insertions(+)
> 
> diff --git a/include/libfile.h b/include/libfile.h
> index a353ccfa9ea9..423e7ffec5b7 100644
> --- a/include/libfile.h
> +++ b/include/libfile.h
> @@ -12,6 +12,8 @@ char *read_file_line(const char *fmt, ...);
>  
>  void *read_file(const char *filename, size_t *size);
>  
> +void *read_fd(int fd, size_t *size);
> +
>  int read_file_2(const char *filename, size_t *size, void **outbuf,
>  		loff_t max_size);
>  
> diff --git a/lib/libfile.c b/lib/libfile.c
> index e53ba08415a2..c257baaa2733 100644
> --- a/lib/libfile.c
> +++ b/lib/libfile.c
> @@ -306,6 +306,50 @@ void *read_file(const char *filename, size_t *size)
>  }
>  EXPORT_SYMBOL(read_file);
>  
> +/**
> + * read_fd - read from a file descriptor to an allocated buffer
> + * @filename:  The file descriptor to read
> + * @size:      After successful return contains the size of the file
> + *
> + * This function reads a file descriptor from offset 0 until EOF to an
> + * allocated buffer.
> + *
> + * Return: The buffer containing the file or NULL on failure
> + */
> +void *read_fd(int fd, size_t *out_size)
> +{
> +	off_t off;
> +	ssize_t ret;
> +	size_t size;
> +	void *buf;
> +
> +	off = lseek(fd, SEEK_CUR, 0);

You lseek to the current position. It seems you are trying to determine
the size of the file, so did you mean to use SEEK_END?

You could use fstat() instead. With that you could also correctly handle
FILE_SIZE_STREAM.

> +	if (off >= 0) {
> +		size = off;
> +		off = lseek(fd, SEEK_SET, 0);
> +	}
> +	if (off < 0) {
> +		ret = off;
> +		goto close_fd;
> +	}
> +
> +	buf = malloc(size + 3);
> +	ret = read_full(fd, buf, size);

You can use pread_full() here to avoid having to lseek to the beginning
of the file.

> +	if (ret < 0) {
> +		free(buf);
> +		goto close_fd;
> +	}
> +
> +	memset(&buf[size], '\0', 3);
> +	*out_size = size;
> +
> +close_fd:
> +	close(fd);
> +
> +	return ret < 0 ? NULL : buf;

Return an error pointer or an error integer and pass buf as argument?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



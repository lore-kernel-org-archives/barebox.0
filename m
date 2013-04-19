Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo3.mail-out.ovh.net ([188.165.43.173]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UTDao-0000oY-7H
 for barebox@lists.infradead.org; Fri, 19 Apr 2013 15:51:19 +0000
Received: from mail407.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 30067FF900E
 for <barebox@lists.infradead.org>; Fri, 19 Apr 2013 17:51:15 +0200 (CEST)
Date: Fri, 19 Apr 2013 17:46:41 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130419154641.GD32215@game.jcrosoft.org>
References: <1366361165-28803-1-git-send-email-h.feurstein@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1366361165-28803-1-git-send-email-h.feurstein@gmail.com>
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/2] common/filetype: move partition-table detection
 into own function
To: Hubert Feurstein <h.feurstein@gmail.com>
Cc: barebox@lists.infradead.org

On 10:46 Fri 19 Apr     , Hubert Feurstein wrote:
> Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
> ---
>  common/filetype.c  | 41 ++++++++++++++++++++++++-----------------
>  include/filetype.h |  1 +
>  2 files changed, 25 insertions(+), 17 deletions(-)
> 
> diff --git a/common/filetype.c b/common/filetype.c
> index 8652f1d..48fcdff 100644
> --- a/common/filetype.c
> +++ b/common/filetype.c
> @@ -151,13 +151,34 @@ enum filetype is_fat_or_mbr(const unsigned char *sector, unsigned long *bootsec)
>  	return filetype_mbr;
>  }
>  
> +enum filetype file_detect_partition_table(const void *_buf, size_t bufsize)
> +{
> +	const u8 *buf8 = _buf;
> +	enum filetype type;
> +
> +	if (bufsize < 512)
> +		return filetype_unknown;
> +
> +	/*
> +	 * EFI GPT need to be detected before MBR otherwise
> +	 * we will detect a MBR
> +	 */
> +	if (bufsize >= 520 && is_gpt_valid(buf8))
> +		return filetype_gpt;
> +
> +	type = is_fat_or_mbr(buf8, NULL);
> +	if (type != filetype_unknown)
> +		return type;
> +
> +	return filetype_unknown;
> +}
> +
>  enum filetype file_detect_type(const void *_buf, size_t bufsize)
>  {
>  	const u32 *buf = _buf;
>  	const u64 *buf64 = _buf;
>  	const u8 *buf8 = _buf;
>  	const u16 *buf16 = _buf;
> -	enum filetype type;
>  
>  	if (bufsize < 9)
>  		return filetype_unknown;
> @@ -204,24 +225,10 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
>  	if (bufsize < 512)
>  		return filetype_unknown;
>  
> -	/*
> -	 * EFI GPT need to be detected before MBR otherwise
> -	 * we will detect a MBR
> -	 */
> -	if (bufsize >= 520 && is_gpt_valid(buf8))
> -		return filetype_gpt;
> -
> -	type = is_fat_or_mbr(buf8, NULL);
> -	if (type != filetype_unknown)
> -		return type;
> -
> -	if (bufsize < 1536)
> -		return filetype_unknown;
> -
> -	if (buf16[512 + 28] == le16_to_cpu(0xef53))
> +	if (bufsize >= 1536 && buf16[512 + 28] == le16_to_cpu(0xef53))
>  		return filetype_ext;
>  
> -	return filetype_unknown;
> +	return file_detect_partition_table(_buf, bufsize);
no you need to move this UP and keep the if bufsize < 1536

and we always need to return unknown at the end
>  }
>  
>  enum filetype file_name_detect_type(const char *filename)
> diff --git a/include/filetype.h b/include/filetype.h
> index 78ca5d2..ee777ac 100644
> --- a/include/filetype.h
> +++ b/include/filetype.h
> @@ -31,6 +31,7 @@ enum filetype {
>  
>  const char *file_type_to_string(enum filetype f);
>  const char *file_type_to_short_string(enum filetype f);
> +enum filetype file_detect_partition_table(const void *_buf, size_t bufsize);
>  enum filetype file_detect_type(const void *_buf, size_t bufsize);
>  enum filetype file_name_detect_type(const char *filename);
>  enum filetype is_fat_or_mbr(const unsigned char *sector, unsigned long *bootsec);
> -- 
> 1.8.1.3
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

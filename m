Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x229.google.com ([2a00:1450:4013:c01::229])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VdSXC-00009t-I7
 for barebox@lists.infradead.org; Mon, 04 Nov 2013 22:22:11 +0000
Received: by mail-ea0-f169.google.com with SMTP id k11so3778428eaj.14
 for <barebox@lists.infradead.org>; Mon, 04 Nov 2013 14:21:47 -0800 (PST)
Date: Mon, 4 Nov 2013 23:21:42 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20131104222141.GA25392@omega>
References: <1383573870-11325-1-git-send-email-s.hauer@pengutronix.de>
 <1383573870-11325-8-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1383573870-11325-8-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 07/11] blspec: make cdev optional
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

On Mon, Nov 04, 2013 at 03:04:26PM +0100, Sascha Hauer wrote:
....
>  
> -		entry->me.display = asprintf("%-20s %-20s  %s", devname, hwdevname,
> +		entry->me.display = asprintf("%-20s %-20s  %s",
> +				devname ? devname : "",
> +				hwdevname ? hwdevname : "",
>  				blspec_entry_var_get(entry, "title"));
> +
>  		free(devname);
>  		free(hwdevname);
>  
> @@ -277,7 +281,7 @@ static int blspec_scan_cdev(struct blspec *blspec, struct cdev *cdev)
>  	if (IS_ERR(rootpath))
>  		return PTR_ERR(rootpath);
>  
> -	ret = blspec_scan_directory(blspec, rootpath, cdev);
> +	ret = blspec_scan_directory(blspec, rootpath);
>  
>  	return ret;
unnecessary assign of ret here, but it's not important...

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

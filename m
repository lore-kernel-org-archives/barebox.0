Delivery-date: Tue, 13 Apr 2021 09:27:04 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWDRw-00072V-5D
	for lore@lore.pengutronix.de; Tue, 13 Apr 2021 09:27:04 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWDRv-0001FJ-7y
	for lore@pengutronix.de; Tue, 13 Apr 2021 09:27:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QC2LJe5CbraySg5kInMc+7ePrDWNTcQi4cTWMUAOytE=; b=WbzK2U0qAJr/+mz8tl8cddSP2
	7bASm6NX2/RMQ+KIJYLCQDx3lo0HQQCcyc1NLOzSaD46c1HJ5vSpQn6Az7vXaQ46LTnlwLui5JMyU
	seJsYDyMBflU/U9JTi4gxizqMv8wsTEbNSdEpEgfjo+y5JjfBLH2KGCU/7cW5HotYLwmy7yH1ztn/
	8Qox1DuaNC63oL9hH2CASdPLfX24cpWS6Phv1Hbc/h4FWSTtriQCJwl7+T7PP2DfPdAUgMOi2Im6M
	Z4rLXyPFfdlmIbTGDsJlkOEQSt0kfvPhGA42tkdMdGYNcic+DYLQ8bLxXnuxjNNlO52zMLp9TxJQO
	zIjgD8r+A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWDOi-008UlZ-02; Tue, 13 Apr 2021 07:23:44 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWDO8-008Uix-2a
 for barebox@desiato.infradead.org; Tue, 13 Apr 2021 07:23:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=From:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=jj4nHQ3g8ekMPiOTz72T3zJMu11c4l9wf+DscZ30rCo=; b=l/qjMiN53ae0rdaK45fm9gzmsA
 AkIuJSuQzJ8lwD/tEdRGLf/WTFMLQjO24RK5pC5EwCF2dTzwTh814Oi4WlB6tYexUqOcy6wuaqftL
 gqmDiOPW1sPDWA2DfSvvPbyjcl85/2TBv6WQe5YhKjOB0RFnHcfsWNsRZ/2/OyBzYgG6O4MhWcUTm
 f/g5aRUo1xZpRqy8tw7+1vj/Jy2wk+Dsllni35Mjrw7rSmpXbZe7FXWyZweYrMsdcO9q/m539hIxO
 Q060cdDN2pHZPGAhXcCt9iidaXgoH6Y6zPbCuWNLaLzC1OXJx5dztfceKLnM2dC1/bxb4NUvoAhds
 xTFR5RdQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWDO5-006nXb-8X
 for barebox@lists.infradead.org; Tue, 13 Apr 2021 07:23:06 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lWDO3-0000gO-1I; Tue, 13 Apr 2021 09:23:03 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lWDO2-0003bK-LI; Tue, 13 Apr 2021 09:23:02 +0200
Date: Tue, 13 Apr 2021 09:23:02 +0200
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20210413072302.GG19819@pengutronix.de>
References: <20210410110250.2104510-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210410110250.2104510-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:22:53 up 54 days, 10:46, 90 users,  load average: 0.14, 0.18, 0.18
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210413_002305_326774_AE6C9173 
X-CRM114-Status: GOOD (  27.75  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] edit: don't change terminal mode if sedit would
 fail to read file
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sat, Apr 10, 2021 at 01:02:50PM +0200, Ahmad Fatoum wrote:
> Failing to read the file, e.g. because the file is actually a directory
> will normally result in an appropriate error message.
> 
> When using vi or sedit however, we change cursor position beforehand
> and then directly exit, which messes up the terminal output and
> can even make the shell unusable (as on my Laptop's UEFI).
> Move the check earlier to avoid this.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  commands/edit.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/commands/edit.c b/commands/edit.c
> index 3ab4beaa4ffb..f1e4e4d5c260 100644
> --- a/commands/edit.c
> +++ b/commands/edit.c
> @@ -495,6 +495,10 @@ static int do_edit(int argc, char *argv[])
>  	if (argc != 2)
>  		return COMMAND_ERROR_USAGE;
>  
> +	buffer = NULL;
> +	if(edit_read_file(argv[1]))
> +		return 1;
> +
>  	screenwidth = 80;
>  
>  	/*
> @@ -517,10 +521,6 @@ static int do_edit(int argc, char *argv[])
>  			is_vi = true;
>  	}
>  
> -	buffer = NULL;
> -	if(edit_read_file(argv[1]))
> -		return 1;
> -
>  	cursx  = 0;
>  	cursy  = 0;
>  	textx  = 0;
> -- 
> 2.30.0
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


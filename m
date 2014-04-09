Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x22f.google.com ([2a00:1450:4013:c00::22f])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WXiyE-0006xy-Em
 for barebox@lists.infradead.org; Wed, 09 Apr 2014 03:14:39 +0000
Received: by mail-ee0-f47.google.com with SMTP id b15so1321394eek.34
 for <barebox@lists.infradead.org>; Tue, 08 Apr 2014 20:14:10 -0700 (PDT)
Date: Wed, 9 Apr 2014 05:27:59 +0200
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20140409032755.GA1317@x61s>
References: <53446E09.4080208@pengutronix.de>
 <1396993842-31482-1-git-send-email-mkl@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1396993842-31482-1-git-send-email-mkl@pengutronix.de>
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
Subject: Re: [PATCH] 2048: port to barebox
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Marc,

On Tue, Apr 08, 2014 at 11:50:42PM +0200, Marc Kleine-Budde wrote:
...
> diff --git a/common/Makefile b/common/Makefile
> index 204241c..b40a078 100644
> --- a/common/Makefile
> +++ b/common/Makefile
> @@ -44,6 +44,7 @@ obj-$(CONFIG_SHELL_HUSH)	+= hush.o
>  obj-$(CONFIG_SHELL_SIMPLE)	+= parser.o
>  obj-$(CONFIG_UIMAGE)		+= image.o uimage.o
>  obj-$(CONFIG_MENUTREE) += menutree.o
> +obj-y				+= 2048/
>  
srsly?

But otherwise it makes no sense, because everybody would disable games
in his/her barebox config.

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

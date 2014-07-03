Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X2aur-00079L-2j
 for barebox@lists.infradead.org; Thu, 03 Jul 2014 06:54:45 +0000
Date: Thu, 3 Jul 2014 08:54:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140703065422.GO14257@pengutronix.de>
References: <1403168850-5995-1-git-send-email-Herve.CODINA@celad.com>
 <53B3AA88.10906@celad.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <53B3AA88.10906@celad.com>
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
Subject: Re: [PATCH 1/1] passwd: Support passwd file custom directory
To: Herve Codina <herve.codina@celad.com>
Cc: barebox@lists.infradead.org

On Wed, Jul 02, 2014 at 08:45:28AM +0200, Herve Codina wrote:
> Hi,
> 
> I haven't got any news about this patch.
> Has it been reviewed ?
> 
> I hope it was not lost in the flow of other patches.
> If so, i can resend it.

Sorry, I have seen it but then forgot to write an answer.

> > diff --git a/include/password.h b/include/password.h
> > index 0dd1054..9d84685 100644
> > --- a/include/password.h
> > +++ b/include/password.h
> > @@ -18,8 +18,14 @@
> >  #ifndef __PASSWORD_H__
> >  #define __PASSWORD_H__
> >  
> > -#define PASSWD_FILE		"/env/etc/passwd"
> > -#define PASSWD_DIR		"/env/etc/"
> > +#ifdef CONFIG_PASSWORD_DIR
> > +#define PASSWD_DIR		CONFIG_PASSWORD_DIR
> > +#else
> > +#define PASSWD_DIR		"/env/etc"
> > +#endif
> > +
> > +#define PASSWD_FILE		PASSWD_DIR"/passwd"

I don't like this ifdeffery. If you want to have this configurable
please make a

static char *passwd_file = "/env/etc/passwd"

int set_passwd_file(const char *file)
{
	passwd_file = file;
}

And call it from your board code.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

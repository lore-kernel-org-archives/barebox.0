Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1as6Jm-0000fC-80
 for barebox@lists.infradead.org; Mon, 18 Apr 2016 10:22:11 +0000
Date: Mon, 18 Apr 2016 12:21:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160418102148.GJ9102@pengutronix.de>
References: <76f44565-7af7-107a-5b0e-acda33ac5321@arcor.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <76f44565-7af7-107a-5b0e-acda33ac5321@arcor.de>
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
Subject: Re: wrong count argument to erase()
To: Giorgio <giorgio.nicole@arcor.de>
Cc: barebox@lists.infradead.org

Hi Giorgio,

On Sat, Apr 16, 2016 at 09:15:04PM +0200, Giorgio wrote:
> Hi,
> 
> I'm using barebox on an embedded system with an imx6 cpu, a nor and
> a nand flash.
> 
> I recently updated the barebox to v2016.04.0 and noticed that the
> command 'saveenv' was surprisingly quick and actually didn't work.
> 
> After a bit of debugging I could track the problem down to a call to the
> function erase() within 'common/environment.c':
> 
> int envfs_save(const char *filename, const char *dirname, unsigned flags)
> {
> ...
> 	ret = erase(envfd, ~0, 0);
> 
> 	/* ENOSYS and EOPNOTSUPP aren't errors here, many devices don't need it */
> 	if (ret && errno != ENOSYS && errno != EOPNOTSUPP) {
> 		printf("could not erase %s: %s\n", filename, errno_str());
> 		goto out;
> 	}
> ...
> 
> The function prototype is:
> 
> int erase(int fd, loff_t count, loff_t offset)
> 
> in particular the second argument, count, is a signed long long.
> 
> Now when calling erase() with a count of ~0 the function will cast it
> to -1 instead of to a 'very big' number and actually never erase
> anything.
> 
> I think in these cases it is better to use cpp macros like LLONG_MAX
> or change the type of count to a size_t.

Thanks for reporting this. I stumbled over the same issue a moment ago.
I just sent a patch fixing this to the list.

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

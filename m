Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vori3-0008LT-W1
 for barebox@lists.infradead.org; Fri, 06 Dec 2013 09:28:32 +0000
Date: Fri, 6 Dec 2013 10:28:10 +0100
From: 'Sascha Hauer' <s.hauer@pengutronix.de>
Message-ID: <20131206092810.GA24559@pengutronix.de>
References: <20131206080535.GY24559@pengutronix.de>
 <000001cef261$1f716e00$5e544a00$@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <000001cef261$1f716e00$5e544a00$@gmail.com>
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
Subject: Re: v2013.12.0
To: Kevin Du Huanpeng <u74147@gmail.com>
Cc: barebox@lists.infradead.org

Hi Kevin,

On Fri, Dec 06, 2013 at 04:56:54PM +0800, Kevin Du Huanpeng wrote:
> arch/x86/lib/barebox.lds
> add this file to .gitignore....
> - - -
> dev@bogon:~/barebox$ git status
> # On branch master
> # Untracked files:
> #   (use "git add <file>..." to include in what will be committed)
> #
> #       arch/x86/lib/barebox.lds
> nothing added to commit but untracked files present (use "git add" to track)

We normally communicate changes to barebox with patches. So if you want
to have something changed in barebox you should send patches. For doing
so you should read Documentation/SubmittingPatches in the Linux Kernel
(Some of this may be outdated, but most of it is true and applies to
barebox aswell)

As a git user the techincal stuff probably goes down to:

git checkout origin/master -b myworkbranch
<commit changes>
git send-email --to "barebox@lists.infradead.org" origin/master

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

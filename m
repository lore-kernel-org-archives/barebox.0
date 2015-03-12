Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YVyDD-00066Q-Hl
 for barebox@lists.infradead.org; Thu, 12 Mar 2015 08:11:24 +0000
Date: Thu, 12 Mar 2015 09:11:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150312081101.GE24885@pengutronix.de>
References: <20150312120541.2e7f1bc81056c1f28a20753f@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20150312120541.2e7f1bc81056c1f28a20753f@gmail.com>
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
Subject: Re: git fetch issue
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Antony,

On Thu, Mar 12, 2015 at 12:05:41PM +0400, Antony Pavlov wrote:
> Hi All!
> 
> I have a problem with git-fetch. Here is the log:
> 
> antony@puro:~/barebox$ git remote show pengutronix | grep "Fetch URL"
>   Fetch URL: git://git.pengutronix.de/git/barebox.git
> 
> antony@puro:~/barebox$ git fetch pengutronix
> remote: Counting objects: 1101, done.
> remote: Compressing objects: 100% (199/199), done.
> remote: Total 771 (delta 628), reused 672 (delta 555)
> Receiving objects: 100% (771/771), 131.67 KiB | 0 bytes/s, done.
> error: index-pack died of signal 7
> fatal: index-pack failed

Just tried at home, it works.

> 
> antony@puro:~/barebox$ git --version
> git version 2.1.4

I have git 2.1.0 though. Does this always happen when you try again?

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

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Xc7Z0-00082j-F7
 for barebox@lists.infradead.org; Thu, 09 Oct 2014 06:51:03 +0000
Date: Thu, 9 Oct 2014 08:50:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141009065035.GG4992@pengutronix.de>
References: <1412778255-4153-1-git-send-email-s.hauer@pengutronix.de>
 <1412778255-4153-6-git-send-email-s.hauer@pengutronix.de>
 <20141008193226.0863b6e28861fd5e0adf1dc0@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20141008193226.0863b6e28861fd5e0adf1dc0@gmail.com>
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
Subject: Re: [PATCH 6/6] commands: implement 'diff' command
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Oct 08, 2014 at 07:32:26PM +0400, Antony Pavlov wrote:
> On Wed,  8 Oct 2014 16:24:15 +0200
> Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
> > This command compares two files. It does not show the differences,
> > it only returns successfully if both files are identical and with
> > an error if they differ.
> 
> Here are my two comments:
> 
> 1. there is the 'cmp' command for simple comparing two files from Unix cmdline.
> Can we use 'cmp' name instead of 'diff'?

Yes, good idea. 'cmp' seems a better name. I changed it.

> 
> 2. we already can use 
>      memcmp -s FILE1 -d FILE2 0 0
>    for comparing files :)

I know. Admittedly I'm working on stuff where I need the diff_file (now
compare_file) C function. The cmp command is merely a vehicle to not
have the compare_file function unused in the tree until this work is
done ;)

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

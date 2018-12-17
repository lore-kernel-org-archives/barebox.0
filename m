Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gYqX5-0007mR-HH
 for barebox@lists.infradead.org; Mon, 17 Dec 2018 10:53:57 +0000
Date: Mon, 17 Dec 2018 11:53:43 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181217105343.kkfo4ihynrcv7dis@pengutronix.de>
References: <24299a5b0abeaa6e99252753c9043121678bd0ce.camel@allegion.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <24299a5b0abeaa6e99252753c9043121678bd0ce.camel@allegion.com>
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
Subject: Re: bareboxenv -s: output depends on filesystem
To: "Baeuerle, Florian" <Florian.Baeuerle@allegion.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Florian,

On Thu, Dec 13, 2018 at 03:47:20PM +0000, Baeuerle, Florian wrote:
> Hi,
> 
> I'm currently trying to get reproducible barebox binaries.
> 
> One problem I'm facing is, that the barebox defaultenv generated during build
> depends on the filesystem used on the build machine. That is, because
> envfs_save() uses recursive_action(), which in turn uses readdir() without
> sorting the entries afterwards.
> 
> quoting man readdir:
>   The order in which filenames are read by successive calls to readdir() depends
> on the filesystem implementation; it is unlikely that the names will be sorted
> in any fashion.
> 
> In fact, on ext4 I get a different barebox binary as on XFS.
> 
> 
> Is this considered something worth being fixed?

Yes, sure.

> 
> It should be sufficient to build a list of directories and sort it before
> recursing. It is, however, shared code which is also used by the saveenv command
> and I'm not sure if malloc'ing recursively is a good idea on all targets where
> saveenv is used.
> 
> I would go ahead and implement it if no one opposes.
> 
> Should I introduce a flag for recursive_action() that allows taking an
> "unsorted" (non-malloc) code path for use with the saveenv command?

Yes, that would be good. I guess there's no point in letting barebox
sort the entries.

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

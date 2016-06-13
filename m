Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1bCKX6-0003WS-VQ
 for barebox@lists.infradead.org; Mon, 13 Jun 2016 05:35:34 +0000
Date: Mon, 13 Jun 2016 07:35:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160613053508.GE31666@pengutronix.de>
References: <20160610085725.0c6ac436ef6f383649064072@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20160610085725.0c6ac436ef6f383649064072@gmail.com>
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
Subject: Re: barebox dts/ directory has no updates for several mouths
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Antony,

On Fri, Jun 10, 2016 at 08:57:25AM +0300, Antony Pavlov wrote:
> Hi Sascha!
> 
> I have found that barebox dts/ directory has no updates for several mouths.
> I have examined the git://xenbits.xen.org/people/ianc/device-tree-rebasing.git repo.
> The last commit in the master branch of the repo is
> 
>   commit e3e9b78e0ed0b64d2b1d994275673b9bc03a2876
>   Merge: 7a07ba8 24952bf
>   Author: Ian Campbell <ian.campbell@citrix.com>
>   Date:   Tue Feb 23 09:54:50 2016 +0000
> 
>       Merge tag 'v4.5-rc5-dts-raw'
>     
>       Linux 4.5-rc5
> 
> I suppose that Ian have stopped adding commits to this repo.
> 
> There is another devicetree-rebasing repo:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/devicetree/devicetree-rebasing.git

I wasn't aware there is a new repository. I just updated my script for
this. Find the new dts files in -next.
Thanks for noting.

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

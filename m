Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UZm7Z-0001YK-H2
 for barebox@lists.infradead.org; Tue, 07 May 2013 17:56:14 +0000
Date: Tue, 7 May 2013 19:55:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130507175549.GR32299@pengutronix.de>
References: <em7b5cc4bb-6894-49f9-9210-8a36eef2d5d4@plh001-think>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <em7b5cc4bb-6894-49f9-9210-8a36eef2d5d4@plh001-think>
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
Subject: Re: Installing barebox for karo-tx53
To: "Dr. Patrick Langfeld" <patrick.langfeld@optimeas.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Tue, May 07, 2013 at 12:33:03PM +0000, Dr. Patrick Langfeld wrote:
> Hi,
> I want to install barebox on a Karo TX53 module as a primary bootloader.
> Now I have a few questions:
> 
> a)
> With wich version should I start. I found the branch karo-tx53 at
> git://github.com/gchiii/barebox-tx53.git
> Is this the right one (as it seems to be quit old with latest commit
> 9 month ago)

I don't know this branch.

> 
> Or should I start with the master branch at
> git://git.pengutronix.de/git/barebox.git ?

Yes, this one is the right one.

> 
> b)
> Is there even a simpler way as I am using ptxdist?

barebox is integrated into ptxdist, so you can just select it in ptxdist
platformconfig. There are also ways to compile a barebox from a git
repository using ptxdist.

> 
> c) How can I flash barebox over u-boot, which is my current bootloader?

Yes, you can. What boot sources does your board have? I think it has
Nand, that's where U-Boot is. Are there other possibilities?

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

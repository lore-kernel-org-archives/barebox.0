Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WkuDs-0002sg-Mo
 for barebox@lists.infradead.org; Thu, 15 May 2014 11:53:17 +0000
Date: Thu, 15 May 2014 13:52:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140515115251.GE5858@pengutronix.de>
References: <1399969739-10355-1-git-send-email-holgerschurig@gmail.com>
 <20140514070250.GV5858@pengutronix.de>
 <20140514175540.56dbdf584330f67779392264@gmail.com>
 <CAOpc7mFnHEUngOJ0Sny99DAsNvQyjynOeBzkE6_LmgCX0E5MBg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOpc7mFnHEUngOJ0Sny99DAsNvQyjynOeBzkE6_LmgCX0E5MBg@mail.gmail.com>
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
Subject: Re: [PATCH 00/19] commands rework patch series
To: Holger Schurig <holgerschurig@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Thu, May 15, 2014 at 10:09:34AM +0200, Holger Schurig wrote:
> Yep, that "gpiolib" command is also on my list.
> 
> I personally also like to rename the device tree commands away from
> of_ (Open Firmware), to dt_ (Device Tree). Today anyone uses the term
> "Device Tree", the of_XXX is just a programmers view, e.g. a prefix
> for C structures.
> 
> Still, I'm unsure about it.
> 
> The thing is: if I rename "gpiolib" to "gpioinfo", no init script will
> be harmed. But maybe some init scripts add device tree nodes
> on-the-fly?  If that is in the git tree, I can find it. But should I
> care for things that aren't in the git tree?

No, what's not in the tree is not there.

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

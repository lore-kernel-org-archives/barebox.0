Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x230.google.com ([2a00:1450:400c:c05::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YIOY6-0001qy-8R
 for barebox@lists.infradead.org; Mon, 02 Feb 2015 21:28:51 +0000
Received: by mail-wi0-f176.google.com with SMTP id bs8so20012937wib.3
 for <barebox@lists.infradead.org>; Mon, 02 Feb 2015 13:28:27 -0800 (PST)
Date: Mon, 2 Feb 2015 22:28:24 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20150202212821.GB2009@omega>
References: <1422195690-20676-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1422195690-20676-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [RFC] [JUST DEMO] commands: implement 'fbputs' command
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

Hi,

On Sun, Jan 25, 2015 at 05:21:30PM +0300, Antony Pavlov wrote:
> Mainline barebox at the moment has no framebuffer
> console support.
> The 'fbputs' demo command displays a text string
> on fb device.
> 
> This quick-n-dirty patch demonstates that barebox
> framebuffer console can be easely realized.
> 
> I'm awaiting your comments!
> 

this mail is not related to your fputs implementation but I had some
really nice idea if we get a console framebuffer feature.

My friend Werner Almesberger build ~4 years ago a solution for
bitbanging VGA on a SD card slot and he said that this should probaly
work on each SD card controller (if you have more than one or just booting
from other source than sd card).

There was a hackaday article about that [0]. Some embedded boards don't
have any video output but an sd card output.

So over some self builded SD to VGA cables everyone gets framebuffer
support in babrebox, he makes all stuff open. See [1]. There exist also
some software parts at [2] to support this interface under linux.

Maybe, we can grab some stuff there and add a generic barebox
framebuffer driver to do some VGA to SD card slot connection. (Don't
know how much possible that is currently).


... or I just getting into a crazy idea to support a cool framebuffer
interface. I mean, we don't need fancy color stuff or doing a very fast
interface, just printing some fonts stuff.

There exist also some "version 2 of this SD card slot to VGA connection"
see [3].

- Alex

[0] http://hackaday.com/2011/05/10/bit-banging-vga-from-an-sd-card-slot/
[1] http://downloads.qi-hardware.com/people/werner/ubb/vga/web/
[2] http://projects.qi-hardware.com/index.php/p/ben-blinkenlights/source/tree/master/ubb-vga
[3] http://discussion.en.qi-hardware.narkive.com/XyzZEmPH/ubb-vga-version-2-first-impression

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

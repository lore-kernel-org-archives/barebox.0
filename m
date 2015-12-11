Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a7Twl-0007IG-Ga
 for barebox@lists.infradead.org; Fri, 11 Dec 2015 20:05:45 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Fri, 11 Dec 2015 20:05:00 +0000
Message-ID: <1449864307.26955.136.camel@rtred1test09.kymeta.local>
References: <1449800007.26955.96.camel@rtred1test09.kymeta.local>
 <20151211093050.GX11966@pengutronix.de>
In-Reply-To: <20151211093050.GX11966@pengutronix.de>
Content-Language: en-US
Content-ID: <8F8DFB95148C104AB9626F50DA8F9868@kymetacorp.com>
MIME-Version: 1.0
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
Subject: Re: [PATCH] socfpga: Find partition with environment via device tree
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox <barebox@lists.infradead.org>

On Fri, 2015-12-11 at 10:30 +0100, Sascha Hauer wrote:
> On Fri, Dec 11, 2015 at 02:13:21AM +0000, Trent Piepho wrote:
> The "barebox,environment" compatible describes a binding which takes
> partition described in device-path as a raw file containing a barebox
> envfs.

Well, I redefined it to have the device-path be the device containing
the environment as raw data or the one containing a filesystem with the
environment as a file if the architecture expects that.

That doesn't seem like a bad definition.

> What you have here is a partition which contains a FAT which has a
> barebox envfs in a file. I think it's fine to extend the binding (and
> the barebox env driver) to handle that case.  What you are doing here is
> to smuggle code behind the driver and bend the environment path to
> somewhere else. That is not ok. I think what we can do is to add some
> file-path property which contains the path and tells the barebox
> environment driver to not use the whole partition but instead to mount
> it and use the file specified in the file-path property.
> 
> As an alternative which I might even like better is to extend the
> partition binding to be able to describe a file in a partition, like:

This won't work.  mmc devices, which all boards that use a file for the
env are using, don't have partitions in the device tree, since they are
created dynamically from the partition table.  There is nowhere to put
the file node.

I did think about extending the env driver to support files and put the
mounting code in there.  It would bloat it for all those platforms that
don't use files (but it would mean all platforms could use files and
socfpga could use a raw device...)

It is also problematic for my board.  I need to change the env path
based on data in an eeprom that selects which partition to use.  Other
boards that have multiple environments select them in a
postcore_initcall using boot strapping pins that aren't part of a
device.  I'm using an eeprom so I need to do the selection later in the
init process.

Maybe extend load_environment to do the mount?  const char
*default_environment_path would have to change to something that could
support the concept of a device + optional filename.  This way one could
change the env path upto environment_initcall() time.
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

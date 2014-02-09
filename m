Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from jdl.com ([208.123.74.7])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WCYfN-0007YB-C3
 for barebox@lists.infradead.org; Sun, 09 Feb 2014 17:59:41 +0000
Message-Id: <E1WCYdq-0004eu-Gr@jdl.com>
In-reply-to: <20140207141028.GT8533@titan.lakedaemon.net>
References: <20140207071332.GE16215@pengutronix.de>
 <20140207141028.GT8533@titan.lakedaemon.net>
Date: Sun, 09 Feb 2014 11:58:06 -0600
From: Jon Loeliger <jdl@jdl.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Devicetree Maintenance in barebox
To: Jason Cooper <jason@lakedaemon.net>
Cc: Grant Likely <grant.likely@secretlab.ca>, barebox@lists.infradead.org, devicetree@vger.kernel.org, Ian Campbell <ijc@hellion.org.uk>

> Hi Sascha,
> 
> + Grant Likely, Ian Campbell, devicetree ML
> 
> Also, In the DT meeting earlier this week, Grant Likely said he has the
> request in to create a separate mailinglist for collaboration between
> the different devicetree users (BSD, Linux, etc).

...

> I think the proper solution will percolate out of the first
> cross-project discussions on the new ML.

...

> Definitely fodder for the new ML.
> 
> Grant, can you please add Sascha to the list of folks to notify when
> the new ML is ready?

I don't think there needs to be a different mailing list
in order to combine or discuss other OS's use of the device
tree compiler.  The  DTC is OS and Use-agnostic.  Discussions
of DTC needs for FreeBSD can happen right here as the orginal
purpose of this list was DTC discussion.

Are you, and Grant(?), suggesting that a separate list
should be created for FreeBSD use of DTS-file contents?
Or that DTS-file-content related discussions should be
separated from DTC discussions?


> imho, the goal is to not have any project tied to a specific version
> of the devicetree.
>
> iow, we don't break backwards compatibility in the
> devicetrees, and projects should revert to default behavior if new dt
> parameters are missing.  This means Linux and BSD shouldn't need to keep
> a current copy of the devicetree in their trees.  However, building the
> bootloader is a different animal.  It needs to provide the dt blob...

The devicetree source file format hasn't changed in years.
Yes, it is enhanced, but compatibly.  Or do you mean the
contents of the DTB for some specific platform?

Thanks,
jdl

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

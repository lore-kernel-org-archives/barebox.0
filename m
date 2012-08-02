Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from plane.gmane.org ([80.91.229.3])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Swvwc-0005cq-61
 for barebox@lists.infradead.org; Thu, 02 Aug 2012 14:00:07 +0000
Received: from list by plane.gmane.org with local (Exim 4.69)
 (envelope-from <gcbb-barebox@m.gmane.org>) id 1SwvwT-0000v7-Nr
 for barebox@lists.infradead.org; Thu, 02 Aug 2012 15:59:59 +0200
Received: from h96-60-251-119.cncrtn.dsl.dynamic.tds.net ([96.60.251.119])
 by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
 id 1AlnuQ-0007hv-00
 for <barebox@lists.infradead.org>; Thu, 02 Aug 2012 15:59:57 +0200
Received: from jkirk865 by h96-60-251-119.cncrtn.dsl.dynamic.tds.net with
 local (Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
 for <barebox@lists.infradead.org>; Thu, 02 Aug 2012 15:59:57 +0200
From: Jerry Kirk <jkirk865@gmail.com>
Date: Thu, 2 Aug 2012 13:59:42 +0000 (UTC)
Message-ID: <loom.20120802T155540-772@post.gmane.org>
References: <loom.20120719T173418-826@post.gmane.org>
 <20120719161139.GB30009@pengutronix.de>
 <loom.20120719T224910-551@post.gmane.org>
 <20120720080435.GP30009@pengutronix.de> <1343827988.3466.76.camel@mars>
 <20120801185644.52c45c4b@eb-e6520> <1343855078.3466.85.camel@mars>
 <20120802081509.GH30009@pengutronix.de>
Mime-Version: 1.0
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC][PATCH] pcm043: usb support --not working--
To: barebox@lists.infradead.org

Sascha Hauer <s.hauer@...> writes:
> By default 'usb' now only probes once. That is because the USB stack is
> too silly to just keep already enumarated devices, but instead just
> removes all devices and reenumarates them. Bad things happen if one of
> your devices was a mounted USB mass storage device for example.
> If you want to probe multiple times try the -f aka force aka I know what
> I'm doing option.


In our case, we have been using the "usb -f" command but it still only
finds HID type devices on the first probe after reset. On later
"usb -f" it only finds the hub. We are using the external Phy module
which is likely the problem. We have verified the clocks are at 60
mhz. We plan to readdress this issue in a couple of weeks when our
final hardware arrives.



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

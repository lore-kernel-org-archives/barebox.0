Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from plane.gmane.org ([80.91.229.3])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XrZcS-0004HE-0x
 for barebox@lists.infradead.org; Thu, 20 Nov 2014 21:50:29 +0000
Received: from list by plane.gmane.org with local (Exim 4.69)
 (envelope-from <gcbb-barebox@m.gmane.org>) id 1XrZc4-0000y2-0k
 for barebox@lists.infradead.org; Thu, 20 Nov 2014 22:50:04 +0100
Received: from ip5b41c286.dynamic.kabel-deutschland.de ([91.65.194.134])
 by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
 id 1AlnuQ-0007hv-00
 for <barebox@lists.infradead.org>; Thu, 20 Nov 2014 22:50:04 +0100
Received: from holger by ip5b41c286.dynamic.kabel-deutschland.de with local
 (Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
 for <barebox@lists.infradead.org>; Thu, 20 Nov 2014 22:50:04 +0100
From: Holger Freyther <holger@freyther.de>
Date: Thu, 20 Nov 2014 20:50:17 +0000 (UTC)
Message-ID: <loom.20141120T214035-355@post.gmane.org>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Activating network during start
To: barebox@lists.infradead.org

Good Evening,

I wrote a small command to send a LLDP frame over the network. Then I
tried to integrate this command into the start script but I noticed that
while a message is printed on the console no actual packet is being
sent on the wire.

I am using a Phytec AM335X SoM and I am not on the latest version of
barebox either so this might be something that is already fixed.

My assumption is that when I use eth_get_current/eth_send the network
is being activated. I had a quick look at the return code of eth_send
to see if I could see that my packet has been dropped but in both
success/failure the method returns 0. Is this to be expected? My
interim solution is to add a sleep after the first command invocation
and then do it again?

Any ideas on how to properly address it?

holger


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

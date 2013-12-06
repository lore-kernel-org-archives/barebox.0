Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x22e.google.com ([2a00:1450:400c:c03::22e])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VosY0-0001DP-K3
 for barebox@lists.infradead.org; Fri, 06 Dec 2013 10:22:13 +0000
Received: by mail-we0-f174.google.com with SMTP id q58so426259wes.5
 for <barebox@lists.infradead.org>; Fri, 06 Dec 2013 02:21:48 -0800 (PST)
MIME-Version: 1.0
From: Atilla Filiz <atilla.filiz@gmail.com>
Date: Fri, 6 Dec 2013 11:21:25 +0100
Message-ID: <CACTZKX4PZ1NKB=4am7hik-w6V+CXApDHbEcAAmp6PakXGK5V0A@mail.gmail.com>
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
Subject: How to debug Ethernet connectivity
To: barebox@lists.infradead.org

Hello

I have been tasked to debug a port of Barebox to our custom board. It
has one Ethernet interface. All network related(dhcp, ping ...) tasks
fail with "Network is down" error, although the link lights on my
switch are on. So I did this on 2013.06:

--- barebox-2013.06.0.orig/net/
eth.c    2013-06-02 12:24:06.000000000 +0200
+++ barebox-2013.06.0/net/eth.c    2013-12-03 16:52:40.428089000 +0100
@@ -142,12 +142,16 @@

     if (force || is_timeout(last_link_check, 5 * SECOND) ||
             !eth_current->phydev->link) {
         ret = phy_update_status(eth_current->phydev);
         if (ret)
             return ret;
         last_link_check = get_time_ns();
     }

+    return 0;
     return eth_current->phydev->link ? 0 : -ENETDOWN;
 }

This bypasses link detection and assumes the link is always up. This
way, I got dhcp, ping and tftp working.

How can I debug this further to hunt down the Ethernet problem?
Something seems wrong with my PHY settings. This is an iMX27 based
board. Which files/functions/structures do I need to check?

--
Atilla Filiz

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

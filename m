Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pb0-f49.google.com ([209.85.160.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SvODy-0004ni-Rt
 for barebox@lists.infradead.org; Sun, 29 Jul 2012 07:47:39 +0000
Received: by pbbrq13 with SMTP id rq13so8523245pbb.36
 for <barebox@lists.infradead.org>; Sun, 29 Jul 2012 00:47:33 -0700 (PDT)
From: Marc Reilly <marc@cpdesign.com.au>
Date: Sun, 29 Jul 2012 17:41:47 +1000
Message-Id: <1343547714-32740-1-git-send-email-marc@cpdesign.com.au>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: at24 eeprom driver (V2) and misc patches
To: barebox@lists.infradead.org

Hi,

These patches add an (improved) at24 eeprom driver and some other fixes. The
eeprom driver has improved write handling that polls the device for write 
completion (rather than fixed 10ms delay).

The eeprom driver requires patch 3 and 4. 

The nand patches fix a build error when BBT is not enabled.

Cheers,
Marc


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from protonic.xs4all.nl ([213.84.116.84])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VRkew-0006qS-6G
 for barebox@lists.infradead.org; Thu, 03 Oct 2013 15:17:47 +0000
Date: Thu, 3 Oct 2013 17:17:26 +0200
From: David Jander <david.jander@protonic.nl>
Message-ID: <20131003171726.096b0daa@archvile>
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
Subject: /dev/disk0 vs /dev/mmc0
To: barebox@lists.infradead.org


Hi all,

I am following barebox git closely and noticed a change recently: Device names
for MMC (MCI) and USB mass-storage devices have changed to the
generic "/dev/diskX". Earlier an MMC device was named "/dev/mmc0".
Unfortunately this change breaks my /env/bin/init script and I don't know how
to fix it. I relied on the existence of certain devices to distinguish between
USB mass-storage device presence and/or SD-card presence. How can I do this
with this new device naming convention?

I used to have these kind of checks in /env/bin/init:

# Mount MMC (first partition) if available
if [ -e "/dev/mmc0.0" ]; then
        mkdir /mmc
        mount /dev/mmc0.0 /mmc
        if [ -e "/mmc/uImage" ]; then
                boot_target="mmc"
        fi
fi

Booting like this is only allowed from MMC and not from USB, and now it seems
impossible to distinguish between them anymore.

Btw, why was this changed in the first place?

Best regards,

-- 
David Jander
Protonic Holland.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

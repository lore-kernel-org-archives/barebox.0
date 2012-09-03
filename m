Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T8Tz2-0001pE-C0
 for barebox@lists.infradead.org; Mon, 03 Sep 2012 10:34:21 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:6f8:1178:4:5054:ff:fe8d:eefb] helo=localhost)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1T8Tyv-0002Zk-Fs
 for barebox@lists.infradead.org; Mon, 03 Sep 2012 12:34:13 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 3 Sep 2012 12:32:56 +0200
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201209031232.56813.jbe@pengutronix.de>
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
Subject: [RFC] Dedicated command to make a target bootable with Barebox
To: barebox@lists.infradead.org

Hi all,

currently I'm working on the difficult process to make an i.MX35 SoC boot from 
an externally connected NAND device.

Nothing special with it, only the NAND flash controller in the i.MX35 (also in 
i.MX25, i.MX27 and i.MX31) is braindamaged broken. This controller loses the 
factory bad block markers when used without a workaround and losing these 
markers is a _really_ bad idea.

But to use the workaround on these SoCs it needs a complicated preparation of 
the NAND. Doing it manually is very error prone. And this kind of preparation 
has to be kept when the system should be updated and so on. Not easy to 
explain and so much more chances for the user to brick the system while the 
update process.

This makes me think about a dedicated command which is responsible to make the 
target bootable and does all the (more or less complicated) steps to ensure 
the next time it gets powered it's able to boot again.

There are more architectures which needs a complicated setup to be able to 
boot it from some kind of externally connected devices like NAND or eMMCs for 
example. Some needs special NAND checksums only for the bootloader, others 
needs to keep the partition table even if the bootloader gets updated and so 
on.

Would it be possible to share one command (or one group of commands) by all 
architectures? And each architecture adds its special code to the command? 

What kind of setup procedures we must cover with such a command?

My examples:

- for the Freescale i.MX SoCs with the broken NFC we must write the bootloader
  in a different way than all the remaining data into the NAND device
- for the Samsung S36410 we must save the factory bad block markers first to
  support booting from NAND as its internal ROM expects the checksums at a
  strange offset in the OOB area

Other constraints on different architectures that comes into your minds?

Regards,
Juergen

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

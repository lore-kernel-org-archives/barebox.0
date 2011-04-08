Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from coyote.quickmin.net ([217.14.112.24])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q87pv-0006kn-Aj
	for barebox@lists.infradead.org; Fri, 08 Apr 2011 09:18:40 +0000
Received: from [10.96.97.181] (tmayer.mit.telemotive.de [10.96.97.181])
	by alderan.mit.telemotive.de (Postfix) with ESMTP id 048C4F7673
	for <barebox@lists.infradead.org>;
	Fri,  8 Apr 2011 11:18:36 +0200 (CEST)
From: Thomas Mayer <thomas.mayer@telemotive.de>
MIME-Version: 1.0
Message-ID: <4D9ED2EC.8070406@telemotive.de>
Date: Fri, 8 Apr 2011 11:18:36 +0200
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Update barebox on mmc without touching partition table
To: barebox@lists.infradead.org

Hi,

to copy barebox to a mmc I use the command "dd if=barebox.bin 
of=/dev/sdb bs=512 seek=2 skip=2 && sync". So I don't touch the first 
0x400 bytes with contains the partition table and everything is fine.

But I want to write a little script to update barebox itself via tftp. 
So I create a partition "/dev/self0" (0x00000 to 0x40000) and update 
barebox with "tftp barebox.bin /dev/self0". The problem is that barebox 
write the first 0x400 bytes too and overwrite the partition table .

Is there any way to "seek" and "skip" with barebox?


Regards,
Thomas





_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

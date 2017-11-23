Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail1.bemta5.messagelabs.com ([195.245.231.142])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eHrp5-0000Kb-6G
 for barebox@lists.infradead.org; Thu, 23 Nov 2017 13:45:50 +0000
From: =?iso-8859-1?Q?Kjell_Ove_R=F8te?= <kjellove.rote@zenitel.com>
Date: Thu, 23 Nov 2017 13:45:22 +0000
Message-ID: <d8583e62109f4b9ebc7030799343b662@nooslMX1.zenitelcss.com>
Content-Language: en-US
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
Subject: FW: Handling boot on NAND Bad Blocks 
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi

We have a product on the Freescale imx28 booting from a NAND Flash.
Lately we have seen high numbers of boards failing, and find we have received batches with marked bad blocks in lower boot addresses of Flash.
Typically we see bad blocks in partition where Barebox are located. 

We do also use the barebox command "bcb" to create the Boot Control Block. 
I did just test that using two partitions for the bootstream, and adding these to BCB handles my problem with bad block in one bootstream partition.

I realize we will get into same problem for bareboxenv, kernel and devicetree partitions.
Is there any sort of built-in mechanism or best practice dealing with this? 
Or do I need to make redundant copy of all partition and verifications before load?

We are currently using a rather old Barebox 2013.01.0, which has been working perfectly fine for many years.

Example running an update command on a partition with one bad block below.

barebox@Stentofon Turbine:/ update -t bootstream -d nand -f sti_boot
host 10.5.2.152 is alive

erasing partition /dev/nand0.bootstream.bb

Skipping bad block at 0x00140000

flashing sti_boot to /dev/nand0.bootstream.bb

Regards, 
Kjell Ove

DISCLAIMER:
This e-mail may contain confidential and privileged material for the sole use of the intended recipient. Any review, use, distribution or disclosure by others is strictly prohibited. If you are not the intended recipient (or authorized to receive for the recipient), please contact the sender by reply e-mail and delete all copies of this message.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

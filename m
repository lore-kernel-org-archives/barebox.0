Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 27.mail-out.ovh.net ([91.121.30.210])
	by bombadil.infradead.org with smtp (Exim 4.69 #1 (Red Hat Linux))
	id 1OGt1W-0004Co-IB
	for barebox@lists.infradead.org; Tue, 25 May 2010 12:14:19 +0000
Message-ID: <4BFBBF17.8010504@eukrea.com>
Date: Tue, 25 May 2010 14:14:15 +0200
From: =?ISO-8859-1?Q?Eric_B=E9nard?= <eric@eukrea.com>
MIME-Version: 1.0
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
Subject: barebox tftp to 2k pagesize NAND
To: barebox@lists.infradead.org

Hi,

while running barebox on a i.MX25 which has 2k pagesize nand, I noticed 
it's not possible to do a tftp directly to NAND (tftp barebox.bin 
/dev/nand0.barebox for example).

tftp try to write 512bytes packets to the NAND thus we get :
offset 0x00000200 not page aligned
when it tries to write the second packet.

The workaround is :
tftp to ram
cp ram => nand

Do you have any idea on how tof ix this problem ?

Thanks,
Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

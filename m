Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.telit.com ([88.37.127.140])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PSUs4-00053l-HD
	for barebox@lists.infradead.org; Tue, 14 Dec 2010 13:24:50 +0000
From: Fabio Porcedda <Fabio.Porcedda@telit.com>
Date: Tue, 14 Dec 2010 14:20:37 +0100
Message-ID: <24A9345B397CD24AA76A4E82E237956545F839C951@XCHTS.tmt.telital.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: loady command failure
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi all,
I'm using Barebox v2010.12.0 (at91sam9260ek_defconfig + loadb + loady)
compiled with codesourcery 2010.q1 on the board Atmel AT91SAM9260-EK,

the loadb command it's woking fine,
but the loady command fails every time, with ckermit and minicom (Ubuntu 10.10):

kermit log:"
Retry 0: NAK on sector
...
Retry 0: NAK on sector
Retry 0: Retry Count Exceeded

Transfer incomplete

*************************
SEND-class command failed.
 Packets sent: 166
 Retransmissions: 0
 Timeouts: 0
 Damaged packets: 0
"

The loadb/loady command of U-Boot v2010.09 on the same AT91SAM9260-EK is working fine.

HW/SW Configuration:
PC: Ubuntu 10.10 + ckermit (211-14) + minicom (2.4-2ubuntu1)

.kermrc:
set line /dev/ttyS0
set speed 115200
set carrier-watch off
set handshake none
set flow-control none
robust
set file type bin
set file name lit
set rec pack 1000
set send pack 1000
set window 5

minicom config:
Bps/Par/Bits       : 115200 8N1
Hardware Flow Control : No
Software Flow Control : No


Thanks in advance for any help
Fabio Porcedda
Software Devoloper - R&D Cagliari
Telit Communications S.p.A.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.tricorecenter.de ([217.6.246.34] helo=root.phytec.de)
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1NnCCY-0000ed-Qd
	for barebox@lists.infradead.org; Thu, 04 Mar 2010 14:39:03 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
	by root.phytec.de (Postfix) with ESMTP id DC11CBF0CA
	for <barebox@lists.infradead.org>; Thu,  4 Mar 2010 15:37:56 +0100 (CET)
MIME-Version: 1.0
Message-ID: <OF1C2EA0DF.7D33DE3B-ONC12576DC.004BDBF4-C12576DC.00507662@phytec.de>
From: Jan Weitzel <J.Weitzel@phytec.de>
Date: Thu, 4 Mar 2010 15:38:51 +0100
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: exit command
To: barebox@lists.infradead.org

Hello
I am trying to fix a problem with the return value coming from exit within =

a if statement.
This test shows the problem:

barebox:/ cat ./tif =

if [ 1 -ne 0 ]; then
 echo in if
 exit 1
fi
barebox:/ ./tif
in if
barebox:/ echo $?
0

In common/hush.c run_list_real(struct pipe *pi) calls run_pipe_real(struct =

pipe *pi).
In function run_pipe_real(struct pipe *pi) line 540 a child pipe is =

started. This child pipe works fine and set a prober last_return_code. =

After return from run_list_real(struct pipe *pi) the return value -2 (Line =

702) is given from run_pipe_real(struct pipe *pi) to run_list_real(struct =

pipe *pi)  and here the right last_return_code will be overwritten.

exit is a command only modifying the wanted exit value r with "return -r - =

2". So here we have also -2 or -3 as return value.
Is the problem located in the line 700 "if (rcode < -1)" statement, or =

should exit be a reserved word to controls the flags? I am not sure why we =

need the father pipe.

Kind Regards
Dipl. Ing. (FH) Jan Weitzel

-Software Entwicklung-
PHYTEC Messtechnik GmbH
Robert-Koch-Str. 39
55129 Mainz
Tel.: +49 (0)6131 9221-0
Web: http://www.phytec.de

Gesch=E4ftsf=FChrer: Dipl.-Ing. Michael Mitezki, Handelsregister Mainz, HRB =

4656, Finanzamt Mainz-Mitte, St.Nr. 266500608, DE 149059855
This E-Mail may contain confidential or privileged information. If you are =

not the intended recipient (or have received this E-Mail in error) please =

notify the sender immediately and destroy this E-Mail. Any unauthorized
copying, disclosure or distribution of the material in this E-Mail is =

strictly forbidden.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

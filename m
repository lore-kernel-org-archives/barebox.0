Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SJjBx-00082v-Qm
 for barebox@lists.infradead.org; Mon, 16 Apr 2012 10:29:54 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:6f8:1178:4:5054:ff:fe8d:eefb] helo=localhost)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1SJjBo-0007nK-7B
 for barebox@lists.infradead.org; Mon, 16 Apr 2012 12:29:44 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 16 Apr 2012 12:29:10 +0200
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201204161229.10943.jbe@pengutronix.de>
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
Subject: Using the 'netconsole'
To: barebox@lists.infradead.org

Hi list,

when I'm using the script from Barebox to run the netconsole I get this
output:

[jbe@host]> scripts/netconsole 192.168.42.215
NOTE: the interrupt signal (normally ^C) has been remapped to ^T

But when I terminate it (with '^T' as the message mentions) the shell prompt
returns, but the netcat job is still running:

[jbe@host]> ps axu | grep netcat
jbe       8628  0.0  0.0   8824   376 pts/261  S    12:24   0:00 netcat -u -l -p 6666

Any idea how to solve it (beside killing it manually)?

Regards,
Juergen

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

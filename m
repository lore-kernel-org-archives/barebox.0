Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ip2.televic.com ([81.82.194.222])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pu5ZU-0003n6-UT
	for barebox@lists.infradead.org; Mon, 28 Feb 2011 16:03:41 +0000
From: Vanalme Filip <F.Vanalme@TELEVIC.com>
Date: Mon, 28 Feb 2011 17:03:37 +0100
Message-ID: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B00DD7@SRV-VS06.TELEVIC.COM>
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
Subject: scripts
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

I'm currently studying some Barebox scripts (i.e. init, boot) and I have noticed something strange with scripts :

barebox:/env/bin echo $bootfile
zImage
barebox:/env/bin echo $eth0.serverip
10.0.48.80
barebox:/env/bin cat test
#!/bin/sh

echo --$eth0.serverip--
echo --$bootfile--
barebox:/env/bin ./test
--10.0.48.80--
----
barebox:/env/bin

When I do an echo of the two environment variables from the command prompt, I can see their values. However, when both commands are entered in a simple script, only the serverip address appears. (I created the test script with "edit" from within Barebox). Am I doing something wrong ?


Filip


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

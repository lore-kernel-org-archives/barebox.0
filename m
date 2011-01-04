Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-iw0-f177.google.com ([209.85.214.177])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PaFpi-00007f-AM
	for barebox@lists.infradead.org; Tue, 04 Jan 2011 22:58:27 +0000
Received: by iwn38 with SMTP id 38so15836097iwn.36
	for <barebox@lists.infradead.org>; Tue, 04 Jan 2011 14:58:25 -0800 (PST)
From: Marc Reilly <marc@cpdesign.com.au>
Date: Wed,  5 Jan 2011 09:57:55 +1100
Message-Id: <1294181876-16619-1-git-send-email-marc@cpdesign.com.au>
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
Subject: imx: Put flash header position specific sections back in
To: barebox@lists.infradead.org

Hi,

This patch adds the position specific flash_header_0xXXXX section defines 
(and friends) so the one barebox image can support multiple boot sources, 
for example Nor and SD. 

If a board only uses one boot source, the existing generic section defines
are simpler to use, so I've left them.

Cheers
Marc


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

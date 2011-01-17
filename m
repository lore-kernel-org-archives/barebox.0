Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-iw0-f177.google.com ([209.85.214.177])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pexi9-0002sG-P9
	for barebox@lists.infradead.org; Mon, 17 Jan 2011 22:38:08 +0000
Received: by iwn38 with SMTP id 38so5359779iwn.36
	for <barebox@lists.infradead.org>; Mon, 17 Jan 2011 14:37:33 -0800 (PST)
From: Marc Reilly <marc@cpdesign.com.au>
Date: Tue, 18 Jan 2011 09:36:46 +1100
Message-Id: <1295303807-19761-1-git-send-email-marc@cpdesign.com.au>
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
Subject: imx25,35 save boot location V2
To: barebox@lists.infradead.org

Hi,

There haven't been any further comments of my earlier patch for saving the boot source for imx,
so here is version 2, it fixes up the use of 0s instead of NULLs.

Cheers
Marc


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

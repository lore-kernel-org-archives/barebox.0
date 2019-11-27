Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.zeus.flokli.de ([88.198.15.28] helo=zeus.flokli.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia6kP-0005dj-Q3
 for barebox@lists.infradead.org; Wed, 27 Nov 2019 23:29:27 +0000
Received: from localhost (p54885F8A.dip0.t-ipconnect.de [84.136.95.138])
 (using TLSv1.2 with cipher AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: flokli@flokli.de)
 by zeus.flokli.de (Postfix) with ESMTPSA id 2CDDBB57055
 for <barebox@lists.infradead.org>; Wed, 27 Nov 2019 23:19:58 +0000 (UTC)
From: Florian Klink <flokli@flokli.de>
Date: Thu, 28 Nov 2019 00:19:43 +0100
Message-Id: <20191127231946.27941-1-flokli@flokli.de>
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
Subject: use /usr/bin/env bash shebang instead of /bin/bash
To: barebox@lists.infradead.org


Some distributions might not have bash in /bin, but in $PATH.

Using #!/usr/bin/env bash solves this, and is consistent with how the
perl and python shebangs look like in the tree.



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

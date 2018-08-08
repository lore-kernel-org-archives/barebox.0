Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fnREv-0007Id-2n
 for barebox@lists.infradead.org; Wed, 08 Aug 2018 16:23:19 +0000
Received: by mail-lj1-x231.google.com with SMTP id y17-v6so2181893ljy.8
 for <barebox@lists.infradead.org>; Wed, 08 Aug 2018 09:23:02 -0700 (PDT)
Date: Wed, 8 Aug 2018 19:22:51 +0300
From: Peter Mamonov <pmamonov@gmail.com>
Message-ID: <20180808162250.avlghvty7eh4ndhi@localhost.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
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
Subject: scripts/dtc/fdtget: No such file or directory
To: barebox@lists.infradead.org, pvizeli@syshack.ch

Hi, 

After "8a8982541 scripts/dtc: Update to upstream version 1.4.6" 
scripts/dtc/Makefile lacks rule for scripts/dtc/fdtget, which causes 
scripts/gen-dtb-s to complain:

	$ make
	...
	scripts/gen-dtb-s: line 24: scripts/dtc/fdtget: No such file or directory
	scripts/gen-dtb-s: line 27: scripts/dtc/fdtget: No such file or directory
	scripts/gen-dtb-s: line 34: scripts/dtc/fdtget: No such file or directory
	scripts/gen-dtb-s: line 37: scripts/dtc/fdtget: No such file or directory
	scripts/gen-dtb-s: line 24: scripts/dtc/fdtget: No such file or directory
	scripts/gen-dtb-s: line 27: scripts/dtc/fdtget: No such file or directory
	scripts/gen-dtb-s: line 34: scripts/dtc/fdtget: No such file or directory
	scripts/gen-dtb-s: line 37: scripts/dtc/fdtget: No such file or directory

Yet a build finishes ok.

Regards,
Peter

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

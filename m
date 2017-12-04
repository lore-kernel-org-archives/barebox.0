Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x244.google.com ([2607:f8b0:400e:c00::244])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eLsoY-0006Dq-Nw
 for barebox@lists.infradead.org; Mon, 04 Dec 2017 15:37:52 +0000
Received: by mail-pf0-x244.google.com with SMTP id j28so8774280pfk.8
 for <barebox@lists.infradead.org>; Mon, 04 Dec 2017 07:37:34 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  4 Dec 2017 07:37:22 -0800
Message-Id: <20171204153726.11479-1-andrew.smirnov@gmail.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 0/4] A bit more consistent interface for "miitool"
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Hi everyone,

This patchset is intended to make miitools's -s option a bit more
consistnet with the rest of Barebox commands. It is inspired mostly by
users's feedback and personal frustration with inability to use
autocomplete in that command.

It's nice to have, IMHO, but if we decide not to have this change
that's fine too.

Thanks,
Andrey Smirnov

Andrey Smirnov (4):
  commands: miitool: Constify 'phydevname' in mdiobus_show()
  fs: Introduce devpath_to_name()
  i.MX: imu-bbu-internal: Make use of devpath_to_name()
  commands/miitool: Allow specifying PHY by their full path

 arch/arm/mach-imx/imx-bbu-internal.c | 3 +--
 commands/miitool.c                   | 9 ++++++---
 include/fs.h                         | 9 +++++++++
 3 files changed, 16 insertions(+), 5 deletions(-)

-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

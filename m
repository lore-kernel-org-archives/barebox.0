Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-f175.google.com ([209.85.215.175])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U8paZ-00053d-VB
 for barebox@lists.infradead.org; Fri, 22 Feb 2013 10:10:48 +0000
Received: by mail-ea0-f175.google.com with SMTP id d1so190768eab.6
 for <barebox@lists.infradead.org>; Fri, 22 Feb 2013 02:10:45 -0800 (PST)
From: Fabio Porcedda <fabio.porcedda@gmail.com>
Date: Fri, 22 Feb 2013 11:10:40 +0100
Message-Id: <1361527842-25815-1-git-send-email-fabio.porcedda@gmail.com>
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
Subject: [PATCH v2 next 0/2] defenv2: complete move config-board out of
 /env/init
To: barebox@lists.infradead.org

v2:
 - add patch 2/2 for telit-evk-pro3

Fabio Porcedda (2):
  defenv2: comment setting default values in /env/config
  ARM at91 telit-evk-pro3: move config-board out of /env/init

 arch/arm/boards/telit-evk-pro3/env/config-board      | 8 ++++++++
 arch/arm/boards/telit-evk-pro3/env/init/config-board | 8 --------
 defaultenv-2/base/config                             | 8 ++++----
 3 files changed, 12 insertions(+), 12 deletions(-)
 create mode 100644 arch/arm/boards/telit-evk-pro3/env/config-board
 delete mode 100644 arch/arm/boards/telit-evk-pro3/env/init/config-board

-- 
1.8.1.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

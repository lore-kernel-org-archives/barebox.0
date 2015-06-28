Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x234.google.com ([2a00:1450:4010:c03::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z9FJW-0001t0-Sm
 for barebox@lists.infradead.org; Sun, 28 Jun 2015 16:20:15 +0000
Received: by lagh6 with SMTP id h6so29249567lag.2
 for <barebox@lists.infradead.org>; Sun, 28 Jun 2015 09:19:51 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun, 28 Jun 2015 19:19:37 +0300
Message-Id: <1435508380-21284-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 0/3] tftp: prepare for picotcp
To: barebox@lists.infradead.org

This patchseries makes it much easier to run barebox tftp client
on top of picotcp network stack in the future.

Antony Pavlov (3):
  fs/tftp: handle incoming packets in the separate tftp_recv() function
  tftp_recv(): according to RFC1350 minimal tftp packet length is 4
    bytes
  tftp_recv(): handle opcode field in a more natural way

 fs/tftp.c | 47 ++++++++++++++++++++++++++---------------------
 1 file changed, 26 insertions(+), 21 deletions(-)

-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

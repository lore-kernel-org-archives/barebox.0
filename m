Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x242.google.com ([2a00:1450:400c:c09::242])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bYDVg-0000rg-FV
 for barebox@lists.infradead.org; Fri, 12 Aug 2016 14:32:33 +0000
Received: by mail-wm0-x242.google.com with SMTP id o80so3203844wme.0
 for <barebox@lists.infradead.org>; Fri, 12 Aug 2016 07:32:11 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 12 Aug 2016 17:32:01 +0300
Message-Id: <1471012324-3881-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 0/3] Documentation: fix sphinx warnings
To: barebox@lists.infradead.org

Antony Pavlov (3):
  Documentation: tplink-mr3020: fix 'Could not lex literal_block as "c"' warning
  Documentation: barebox: fix 'Could not lex literal_block as "c"' warning
  Documentation: variables: fix error in "code-block" directive

 Documentation/boards/mips/tplink-mr3020.rst | 12 ++++--
 Documentation/user/barebox.rst              | 60 +++++++++++++++++++++--------
 Documentation/user/variables.rst            |  1 +
 3 files changed, 55 insertions(+), 18 deletions(-)

-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

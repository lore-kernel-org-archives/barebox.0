Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail1.bemta25.messagelabs.com ([195.245.230.67])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fvfJJ-0003Ox-2v
 for barebox@lists.infradead.org; Fri, 31 Aug 2018 09:01:55 +0000
From: <Oleg.Karfich@wago.com>
Date: Fri, 31 Aug 2018 09:01:25 +0000
Message-ID: <1535706079-10439-1-git-send-email-oleg.karfich@wago.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 0/3] extend dhcp functionality
To: barebox@lists.infradead.org
Cc: Oleg.Karfich@wago.com

Hi,

this little patch series adds:

	1. possibility to send private data with the option 224 (dhcp request)
	   trough global variable or dhcp command

	2. add possibility back to configure retry limit trough global variable

Regards
Oleg

Oleg Karfich (3):
  net: dhcp: use private extension 224 also in discover requests
  commands: dhcp: add parameter for private data
  net: dhcp: add global variable for retries

 commands/Kconfig |  5 +++--
 commands/dhcp.c  | 10 +++++++---
 include/dhcp.h   |  1 +
 net/dhcp.c       |  9 +++++++++
 4 files changed, 20 insertions(+), 5 deletions(-)

-- 
2.7.4

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

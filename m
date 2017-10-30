Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e97PJ-0002Q1-Nc
 for barebox@lists.infradead.org; Mon, 30 Oct 2017 10:35:11 +0000
From: Enrico Jorns <ejo@pengutronix.de>
Date: Mon, 30 Oct 2017 11:34:16 +0100
Message-Id: <20171030103421.15353-1-ejo@pengutronix.de>
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
Subject: [PATCH v2 0/5] Fixes for nv command handling
To: barebox@lists.infradead.org
Cc: Enrico Jorns <ejo@pengutronix.de>

This series adds a couple of fixes and enhancement in option parsing and error
handling for the 'nv' command.

CHANGES:

* Merged 1/5 and 4/5 of old series into 1/5
* added patch: 'common: globvar: let nvvar_remove() report non-existing variable'

Enrico Jorns (5):
  commands: nv: fail with verbose message if invoked without args
  commands: nv: call nvvar_print() only if no argument is given
  commands: nv: assure error code will be returned when an error
    occurred
  common: globvar: let nvvar_remove() report non-existing variable
  commands: nv: adjust command help

 commands/nv.c      | 36 ++++++++++++++++++++++++------------
 common/globalvar.c |  4 +++-
 2 files changed, 27 insertions(+), 13 deletions(-)

-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

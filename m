Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH9or-0006zE-RH
 for barebox@lists.infradead.org; Wed, 25 Mar 2020 17:28:01 +0000
From: Clement Leger <cleger@kalray.eu>
Date: Wed, 25 Mar 2020 18:27:35 +0100
Message-Id: <20200325172737.8621-1-cleger@kalray.eu>
In-Reply-To: <20200316110008.2909-3-cleger@kalray.eu>
References: <20200316110008.2909-3-cleger@kalray.eu>
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
Subject: [PATCH v2 0/2] Allow parsing more than one memory node
To: Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org
Cc: Clement Leger <cleger@kalray.eu>

Currently, barebox can only parse one memory node. This means that
all other memory nodes (with device_type == "memory") will be ignored
while parsing memory.
This patchset add a function of_probe_memory which will call
of_add_memory for each found memory node. Additionally, of_add_memory
has been modified to allow being called multiple times and correctly
add all memory banks.

Changes v1 -> v2
 - Reorder patches
 - Remove legacy "memory" node handling

Clement Leger (2):
  of: base: allow of_add_memory to be called multiple times
  of: base: parse all available memory nodes

 drivers/of/base.c | 33 ++++++++++++++++++++++-----------
 1 file changed, 22 insertions(+), 11 deletions(-)

-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

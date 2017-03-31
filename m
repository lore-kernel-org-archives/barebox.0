Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ctqbb-0005fe-LE
 for barebox@lists.infradead.org; Fri, 31 Mar 2017 07:04:21 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 31 Mar 2017 09:03:43 +0200
Message-Id: <20170331070346.26878-40-s.hauer@pengutronix.de>
In-Reply-To: <20170331070346.26878-1-s.hauer@pengutronix.de>
References: <20170331070346.26878-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 39/42] state: Update documentation
To: Barebox List <barebox@lists.infradead.org>

- explain what buckets are
- rework text about storage backends
- explain redundancy concept

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/user/state.rst | 33 ++++++++++++++++++++++++++-------
 1 file changed, 26 insertions(+), 7 deletions(-)

diff --git a/Documentation/user/state.rst b/Documentation/user/state.rst
index 5dd5c486e2..73c4be8159 100644
--- a/Documentation/user/state.rst
+++ b/Documentation/user/state.rst
@@ -23,16 +23,35 @@ available, ``raw`` and ``dtb``. Both format the state data differently.
 Basically these are serializers. The raw serializer additionally supports a
 HMAC algorithm to detect manipulations.
 
+The data is always stored in a logical unit called ``bucket``. A ``bucket`` has
+its own size depending on some external contraints. These contraints are listed
+in more detail below depending on the used memory type and storage backend. A
+``bucket`` stores exactly one state. A default number of three buckets is used
+to store data redundantely.
+
+Redundancy
+----------
+
+The state framework is safe against powerfailures during write operations. To
+archieve that multiple buckets are stored to disk. When writing all buckets are
+written in order. When reading, the buckets are read in order and the first
+one found that passes CRC tests is used. When all data is read the buckets
+containing invalid or outdated data are written with the data just read. Also
+NAND blocks need cleanup due to excessive bitflips are rewritten in this step.
+With this it is made sure that after successful initialization of a state the
+data on the storage device is consistent and redundant.
+
 Storage Backends
 ----------------
 
-The serialized data can be stored to different backends which are automatically
-selected depending on the defined backend in the devicetree. Currently two
-implementations exist, ``circular`` and ``direct``. ``circular`` writes the
-data sequentially on the backend storage device. Each save is appended until
-the storage area is full. It then erases the block and starts from offset 0.
-``circular`` is used for MTD devices with erase functionality. ``direct``
-writes the data directly to the file without erasing.
+The serialized data can be stored to different backends. Currently two
+implementations exist, ``circular`` and ``direct``. The state framework automatically
+selects the correct backend depending on the storage medium. Media requiring
+erase operations (NAND, NOR flash) use the ``circular`` backend, others use the ``direct``
+backend. The purpose of the ``circular`` backend is to save erase cycles which may
+wear out the flash blocks. It continuously fills eraseblocks with updated data
+and only when an eraseblock if fully written erases it and starts over writing
+new data to the same eraseblock again.
 
 For all backends multiple copies are written to handle read errors.
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l5TNE-00078t-JN
 for barebox@lists.infradead.org; Fri, 29 Jan 2021 12:59:42 +0000
From: Bastian Krause <bst@pengutronix.de>
Date: Fri, 29 Jan 2021 13:59:36 +0100
Message-Id: <20210129125936.20053-1-bst@pengutronix.de>
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
Subject: [PATCH] Documentation: state: recommend a partition type GUID for
 state GPT partitions
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, Bastian Krause <bst@pengutronix.de>

The partition type GUID was generated randomly. Having a defined GUID
should reduce the risk of collisions in the future.

A dedicated GUID could also allow us to implement a fallback in case no
state backend property is defined. This could then look for a GPT
partition with this partition type GUID and use that as the backend.
dt-utils could do the same in userspace. This would be similar to [1].

[1] https://www.freedesktop.org/wiki/Specifications/DiscoverablePartitionsSpec/

Signed-off-by: Bastian Krause <bst@pengutronix.de>
---
 Documentation/user/state.rst | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/user/state.rst b/Documentation/user/state.rst
index 54aa396257..a0e27d4fe8 100644
--- a/Documentation/user/state.rst
+++ b/Documentation/user/state.rst
@@ -579,6 +579,9 @@ content, its backend-type and *state* variable layout.
 		};
 	};
 
+If the *state* variable set is set to be located in a GPT partition, use
+``4778ed65-bf42-45fa-9c5b-287a1dc4aab1`` as the partition type GUID.
+
 SRAM
 ####
 
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

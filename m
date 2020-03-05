Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9l7W-0000BM-4l
 for barebox@lists.infradead.org; Thu, 05 Mar 2020 07:40:41 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  5 Mar 2020 08:40:32 +0100
Message-Id: <20200305074032.29725-3-a.fatoum@pengutronix.de>
In-Reply-To: <20200305074032.29725-1-a.fatoum@pengutronix.de>
References: <20200305074032.29725-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 2/2] state: treat state with all-invalid buckets as dirty
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The state.dirty flag controls whether state_save will actually
persist state. It is cleared when we successfully load or save
state and set on writing a state parameter.

When the state however becomes corrupt during barebox runtime and
state.dirty == 0, reinitializing the state to defaults is quite
cumbersome:

1. We reset twice. After the first reset, the dirty flag is reset
   and before the second, state_save will reinitialize to defaults
2. We write any state variable and then run the state -s command

Both workarounds are quite obscure, improve the user experience
by having state -l set the dirty flag when it fails, so a subsequent
state -s may persist the default values to state.

Steps to reproduce:

  barebox$ state -l
  state: Using bucket 0@0x00000000
  barebox$ memcpy -s /dev/zero -d /dev/eeprom0.state 0 0 0x400
  barebox$ state -s
  barebox$ state -l
  ERROR: state: No meta data header found
  ERROR: state: No meta data header found
  ERROR: state: No meta data header found
  ERROR: state: Failed to find any valid state copy in any bucket
  ERROR: state: Failed to read state with format raw, -2
  state: No such file or directory

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/state/state.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/common/state/state.c b/common/state/state.c
index b168387eef0b..1822f37f3e29 100644
--- a/common/state/state.c
+++ b/common/state/state.c
@@ -94,7 +94,7 @@ out:
  */
 static int state_do_load(struct state *state, enum state_flags flags)
 {
-	void *buf;
+	void *buf = NULL;
 	ssize_t len;
 	int ret;
 
@@ -103,7 +103,7 @@ static int state_do_load(struct state *state, enum state_flags flags)
 	if (ret) {
 		dev_err(&state->dev, "Failed to read state with format %s, %d\n",
 			state->format->name, ret);
-		return ret;
+		goto out;
 	}
 
 	ret = state->format->unpack(state->format, state, buf, len);
@@ -114,9 +114,8 @@ static int state_do_load(struct state *state, enum state_flags flags)
 	}
 
 	state->init_from_defaults = 0;
-	state->dirty = 0;
-
 out:
+	state->dirty = !!ret; /* mark dirty on error */
 	free(buf);
 	return ret;
 }
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

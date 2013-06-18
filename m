Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Up2HN-0001qc-BB
 for barebox@lists.infradead.org; Tue, 18 Jun 2013 20:13:26 +0000
Date: Tue, 18 Jun 2013 22:13:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130618201303.GA32299@pengutronix.de>
References: <1371576607-8090-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1371576607-8090-8-git-send-email-sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1371576607-8090-8-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: Re: [PATCH 07/22] OF: base: sync of_find_node_by_path with linux OF
 API
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Jun 18, 2013 at 07:29:52PM +0200, Sebastian Hesselbarth wrote:
> Barebox of_find_node_by_path requires a node to be passed as start node
> to start searching. Linux OF API does not pass this node and no current
> user of it in barebox is passing anything else than the root node.
> Therefore, the device_node argument is removed and all current users of
> that function are updated to reflect the API change.

This is a patch I'm not quite happy with. devicetree is such a nice data
structure that it can be useful for other purposes than just a
singular tree for describing the hardware layout.

Maybe we should rename the current implementatiion to
of_find_node_by_path_from() and add a of_find_node_by_path() which calls
this with root_node as first argument?

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

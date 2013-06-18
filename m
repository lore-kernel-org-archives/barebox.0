Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x233.google.com ([2a00:1450:4008:c01::233])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Up2Np-00029C-Ks
 for barebox@lists.infradead.org; Tue, 18 Jun 2013 20:20:06 +0000
Received: by mail-bk0-f51.google.com with SMTP id ji1so1988305bkc.24
 for <barebox@lists.infradead.org>; Tue, 18 Jun 2013 13:19:42 -0700 (PDT)
Message-ID: <51C0C0DB.1040508@gmail.com>
Date: Tue, 18 Jun 2013 22:19:39 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
References: <1371576607-8090-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1371576607-8090-8-git-send-email-sebastian.hesselbarth@gmail.com>
 <20130618201303.GA32299@pengutronix.de>
In-Reply-To: <20130618201303.GA32299@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 07/22] OF: base: sync of_find_node_by_path with linux
 OF API
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 06/18/2013 10:13 PM, Sascha Hauer wrote:
> On Tue, Jun 18, 2013 at 07:29:52PM +0200, Sebastian Hesselbarth wrote:
>> Barebox of_find_node_by_path requires a node to be passed as start node
>> to start searching. Linux OF API does not pass this node and no current
>> user of it in barebox is passing anything else than the root node.
>> Therefore, the device_node argument is removed and all current users of
>> that function are updated to reflect the API change.
>
> This is a patch I'm not quite happy with. devicetree is such a nice data
> structure that it can be useful for other purposes than just a
> singular tree for describing the hardware layout.
>
> Maybe we should rename the current implementatiion to
> of_find_node_by_path_from() and add a of_find_node_by_path() which calls
> this with root_node as first argument?

Agree, I droped a similar patch removing root node passing from
of_print_cmdline() because I realized that root_node is only for the
installed device tree.

Will have in mind for a v2.

Sebastian


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

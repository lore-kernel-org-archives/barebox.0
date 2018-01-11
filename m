Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from xspv0103.northgrum.com ([134.223.120.78])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eZez9-0007lL-LZ
 for barebox@lists.infradead.org; Thu, 11 Jan 2018 15:41:45 +0000
From: "Dgien, David [US] (MS)" <David.Dgien@ngc.com>
Date: Thu, 11 Jan 2018 15:40:49 +0000
Message-ID: <54fc425c0bfd47078982f16247bd164b@XCGVAG27.northgrum.com>
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
Subject: Barebox device tree overlay support
To: "'barebox@lists.infradead.org'" <barebox@lists.infradead.org>

Hello,

When going through the archives it looks like a set of patches were submitted to support device tree overlays in barebox in http://lists.infradead.org/pipermail/barebox/2015-March/022674.html.
But they weren't accepted because overlays weren't fully implemented in the DTC yet.

It looks like overlay support was mainlined in the kernel in 4.11. ( kernel/git/torvalds/linux.git: be5165a51d2500ae1afa1236a8b09858831fdf7e )

Would it be possible to take another look at pulling these patches into the barebox mainline?

Thank you,
David Dgien


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

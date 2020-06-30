Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jqH7T-0002Bc-0a
 for barebox@lists.infradead.org; Tue, 30 Jun 2020 14:20:19 +0000
References: <1593524914-228154-1-git-send-email-r.karszniewicz@phytec.de>
From: Robert Karszniewicz <r.karszniewicz@phytec.de>
Message-ID: <1a2cb925-dccd-8de7-08da-c4abe76d473c@phytec.de>
Date: Tue, 30 Jun 2020 16:20:17 +0200
MIME-Version: 1.0
In-Reply-To: <1593524914-228154-1-git-send-email-r.karszniewicz@phytec.de>
Content-Language: en-US
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
Subject: Re: [RFC PATCH 0/4] Introduce global.bootm.root env var for booting
 via PARTUUID
To: barebox@lists.infradead.org

The problem is that we want to be able to have the rootfs and kernel on 
separate partitions. We've looked into the Boot Loader Specification, 
but from what we saw, it makes A-B systems difficult (according to the 
spec, there can only be one "$BOOT" filesystem on a device).

For reference: https://systemd.io/BOOT_LOADER_SPECIFICATION/

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout1.fh-giessen.de ([212.201.18.42])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gGmve-00009N-Hw
 for barebox@lists.infradead.org; Sun, 28 Oct 2018 15:24:39 +0000
Received: from mx2.fh-giessen.de ([212.201.18.41])
 by mout1.fh-giessen.de with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.91) (envelope-from <martin.hofmann@mni.thm.de>)
 id 1gGmvJ-000Vfo-As
 for barebox@lists.infradead.org; Sun, 28 Oct 2018 16:24:17 +0100
Received: from mailgate-3.its.fh-giessen.de ([212.201.18.34])
 by mx2.fh-giessen.de with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.91) (envelope-from <martin.hofmann@mni.thm.de>)
 id 1gGmvJ-00FGDE-7R
 for barebox@lists.infradead.org; Sun, 28 Oct 2018 16:24:17 +0100
Received: from p2e516a59.dip0.t-ipconnect.de ([46.81.106.89]
 helo=[192.168.178.56]) by mailgate-3.its.fh-giessen.de with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.91)
 (envelope-from <martin.hofmann@mni.thm.de>) id 1gGmvJ-000XDF-0w
 for barebox@lists.infradead.org; Sun, 28 Oct 2018 16:24:17 +0100
From: Martin Hofmann <martin.hofmann@mni.thm.de>
Message-ID: <8b1454dd-7a19-f6c8-d3cd-863372947e4c@mni.thm.de>
Date: Sun, 28 Oct 2018 16:24:13 +0100
MIME-Version: 1.0
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
Subject: No default env without Barebox wanting to load from persistant storage
To: barebox@lists.infradead.org

Hello everyone,

I am currently working on a Barebox port for our own home made 
architecture used for educational purpose.

The port can be found under github.com/mh0fmann/eco32-barebox and starts
being used.

Our architecture does not have any kind of nand or nor flash that can be 
added used for /dev/env0 to store a environment in it but we still want 
to use a default compile in enivornment.

In oderder to use that one is in the in the need to activate 
CONFIG_ENV_HANDLING which alaways wants to load a environment from 
/dev/env0.

So the question is - is it not possible to just use a compile in default 
env without the need that barebox wants to load another env from 
somewhere else or did i miss something on the way?

 From the code I see that CONFIG_ENV_HANDLING activates the initcall 
with the whole code loading the compiled in one and the one stored on 
persistant storage. So maybe that envfs_load(...) should also be nested 
in a compile time evaluation and Kconfig option to enable the loading 
from persistand stiorage.

I mean it still works but one always gets the message that nothing could 
be loaded from /dev/env0 which is true for our case because it is not 
there and won't be in near future. So it would be good if one could use 
a default compile in env without having barebox to search and load for 
another env on some persistent storage if not explicitly configured to 
do so.

If so maybe this would be a good idea to add this in a upcoming version.

Greetings,
Martin

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

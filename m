Delivery-date: Mon, 15 Dec 2025 08:59:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV3Un-00BfRg-04
	for lore@lore.pengutronix.de;
	Mon, 15 Dec 2025 08:59:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV3Ul-0005sg-Po
	for lore@pengutronix.de; Mon, 15 Dec 2025 08:59:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=beCNQEzmXve/Top+BOtH+yru62M0WFbi49xHWk7Laik=; b=kNLKYIsjf5m0ya9/nEF/NuK/zs
	hKwjBtge3Ck7D8oGW1WUFbSjkPr0YGIPA3PhmSo8sNcWhwjRoIf1iP9/K6EYTUWDBied5kzbwEnKH
	GaVGO80irOm15acU4+e+DO83PXmoaVl28JGG7LVi/LMrbYnyn06NO+kpSIC7W7jAIVtPa9zT1w04q
	7XsIKClboIEpP9YFv+wUac1tXCnd2CeKioHaNWe32DON6xvRycQDCQTTheerLm1DgiFd5Oyt6TG+p
	rxrc3AxsDl5M6CWc6FxNiRD+/+ouhPHHT9VMC4PVnII8X+edlAB4CwK2tMNtm9+oGlTN7t8xTQ/zn
	yFmt2k9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV3UF-00000003EZK-3tm6;
	Mon, 15 Dec 2025 07:59:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV3U9-00000003EXF-2duZ
	for barebox@lists.infradead.org;
	Mon, 15 Dec 2025 07:59:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vV3U6-0005a9-He; Mon, 15 Dec 2025 08:59:10 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vV3U6-005kAe-0k;
	Mon, 15 Dec 2025 08:59:10 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vV3U6-0000000594H-0XfZ;
	Mon, 15 Dec 2025 08:59:10 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	"Claude Sonnet 4.5" <claude@anthropic.com>
Date: Mon, 15 Dec 2025 08:59:00 +0100
Message-ID: <20251215075907.1222551-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251215075907.1222551-1-a.fatoum@pengutronix.de>
References: <20251215075907.1222551-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251214_235913_975327_E3576EF9 
X-CRM114-Status: GOOD (  22.29  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 4/5] Documentation: generate docs for magic variables
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We have documentation for magic variables scattered around the docs, but
some variables docs is only available at runtime using the magicvar
command.

Let's include a listing of all extracted BAREBOX_MAGICVAR(..., ...)
occurrences in the code base formatted as a table in a hierarchical
manner.

The code is LLM-generated by feeding in the existing gen_commands.py
in addition to the prompt.

Co-developed-by: Claude Sonnet 4.5 <claude@anthropic.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/.gitignore         |   1 +
 Documentation/Makefile           |  11 +-
 Documentation/gen_magicvars.py   | 357 +++++++++++++++++++++++++++++++
 Documentation/user/variables.rst |  11 +-
 4 files changed, 372 insertions(+), 8 deletions(-)
 create mode 100755 Documentation/gen_magicvars.py

diff --git a/Documentation/.gitignore b/Documentation/.gitignore
index e8b2851d2552..4e35bebf8d51 100644
--- a/Documentation/.gitignore
+++ b/Documentation/.gitignore
@@ -2,4 +2,5 @@
 
 build
 commands
+magicvars.rst
 html
diff --git a/Documentation/Makefile b/Documentation/Makefile
index 825cd3ba0e7f..03daa0a2ab2f 100644
--- a/Documentation/Makefile
+++ b/Documentation/Makefile
@@ -15,12 +15,17 @@ objtree ?= $(srctree)
 
 docs: htmldocs FORCE
 
-htmldocs: FORCE
-	@mkdir -p $(srctree)/Documentation/commands
-	@$(srctree)/Documentation/gen_commands.py $(srctree) $(srctree)/Documentation/commands
+htmldocs: gen_commands gen_magicvars FORCE
 	@$(SPHINXBUILD) -b html -d $(objtree)/doctrees $(srctree)/Documentation \
 		$(objtree)/Documentation/html $(ALLSPHINXOPTS)
 
+gen_commands: FORCE
+	@mkdir -p $(srctree)/Documentation/commands
+	@$(srctree)/Documentation/gen_commands.py $(srctree) $(srctree)/Documentation/commands
+
+gen_magicvars: FORCE
+	@$(srctree)/Documentation/gen_magicvars.py $(srctree) $(srctree)/Documentation/user/magicvars.rst
+
 dochelp: FORCE
 	@echo  ' barebox internal documentation from ReST:'
 	@echo  '  htmldocs        - HTML'
diff --git a/Documentation/gen_magicvars.py b/Documentation/gen_magicvars.py
new file mode 100755
index 000000000000..e2bb02036051
--- /dev/null
+++ b/Documentation/gen_magicvars.py
@@ -0,0 +1,357 @@
+#!/usr/bin/env python3
+# SPDX-License-Identifier: GPL-2.0-only
+
+import os
+import re
+import sys
+import hashlib
+from collections import defaultdict
+
+MAGICVAR = re.compile(r'BAREBOX_MAGICVAR\s*\(\s*(\S+)\s*,\s*"(.*?)"\s*\)')
+MAGICVAR_START = re.compile(r'BAREBOX_MAGICVAR\s*\(\s*(\S+)\s*,\s*"(.*?)$')
+MAGICVAR_CONT = re.compile(r'(.*?)"\s*\)')
+
+UNESCAPE = re.compile(r'''\\(["\\])''')
+
+# Global override dictionary to map directories to specific arch or board
+DIRECTORY_OVERRIDES = {
+    'drivers/soc/kvx': {'arch': 'kvx'},
+}
+
+
+def string_unescape(s):
+    return re.sub(UNESCAPE, r'\1', s.replace(r'\t', '').replace(r'\n', ''))
+
+
+def parse_c(filepath):
+    """Parse a C file and extract BAREBOX_MAGICVAR declarations."""
+    magicvars = []
+
+    with open(filepath, 'r') as f:
+        content = f.read()
+
+    # Try to find all BAREBOX_MAGICVAR occurrences
+    # First, try single-line matches
+    for match in MAGICVAR.finditer(content):
+        varname = match.group(1).strip()
+        description = string_unescape(match.group(2))
+        magicvars.append((varname, description))
+
+    # For multi-line matches, we need to search line by line
+    lines = content.split('\n')
+    i = 0
+    while i < len(lines):
+        line = lines[i]
+
+        # Check if this line was already matched by single-line regex
+        if MAGICVAR.search(line):
+            i += 1
+            continue
+
+        # Try multi-line match
+        m = MAGICVAR_START.search(line)
+        if m:
+            varname = m.group(1).strip()
+            description = m.group(2)
+            i += 1
+
+            # Continue reading lines until we find the closing
+            while i < len(lines):
+                line = lines[i]
+                m_end = MAGICVAR_CONT.search(line)
+                if m_end:
+                    description += m_end.group(1)
+                    break
+                else:
+                    description += line
+                i += 1
+
+            description = string_unescape(description)
+            magicvars.append((varname, description))
+
+        i += 1
+
+    return magicvars
+
+
+def categorize_file(filepath):
+    """Determine if a file is arch-specific, board-specific, or common."""
+    parts = filepath.split(os.sep)
+
+    arch = None
+    board = None
+    
+    # Check for directory overrides first
+    for override_path, override_spec in DIRECTORY_OVERRIDES.items():
+        override_parts = override_path.split('/')
+        # Check if the filepath starts with the override path
+        if len(parts) >= len(override_parts):
+            if all(parts[i] == override_parts[i] for i in range(len(override_parts))):
+                # This file matches the override path
+                if 'arch' in override_spec:
+                    arch = override_spec['arch']
+                if 'board' in override_spec:
+                    board = override_spec['board']
+                return arch, board
+
+    # Check for arch
+    if 'arch' in parts:
+        arch_idx = parts.index('arch')
+        if arch_idx + 1 < len(parts):
+            arch = parts[arch_idx + 1]
+
+    # Check for board
+    if 'boards' in parts:
+        boards_idx = parts.index('boards')
+        if boards_idx + 1 < len(parts):
+            board = parts[boards_idx + 1]
+
+    return arch, board
+
+
+def get_prefix_group(varname):
+    """Get the prefix group for a variable name."""
+    if '.' not in varname:
+        return None  # No prefix group
+
+    parts = varname.split('.')
+    if len(parts) == 2:
+        return parts[0]  # e.g., "global" from "global.option"
+    else:
+        return '.'.join(parts[:-1])  # e.g., "global.bootm" from "global.bootm.option"
+
+
+def hoist_single_elements(grouped_vars):
+    """Hoist single-element groups to their parent group."""
+    # Find single-element groups
+    single_element_groups = []
+    for prefix, vars_list in list(grouped_vars.items()):
+        if prefix and len(vars_list) == 1:
+            single_element_groups.append(prefix)
+
+    # Hoist them
+    for prefix in single_element_groups:
+        varname, description = grouped_vars[prefix][0]
+        del grouped_vars[prefix]
+
+        # Find parent prefix
+        if '.' in prefix:
+            parent_prefix = '.'.join(prefix.split('.')[:-1])
+        else:
+            parent_prefix = None
+
+        grouped_vars[parent_prefix].append((varname, description))
+
+    return grouped_vars
+
+
+def generate_table(vars_list, arch=None, board=None):
+    """Generate a ReST table for a list of variables."""
+    if not vars_list:
+        return ""
+
+    # Sort alphabetically
+    vars_list = sorted(vars_list, key=lambda x: x[0])
+
+    lines = []
+    lines.append(".. list-table::")
+    lines.append("   :header-rows: 1")
+    lines.append("   :align: left")
+    lines.append("   :widths: 30 70")
+    lines.append("   :width: 100%")
+    lines.append("")
+    lines.append("   * - Variable")
+    lines.append("     - Description")
+
+    for varname, description in vars_list:
+        # Generate anchor
+        anchor = varname.replace('.', '_')
+        if board:
+            anchor = f"{anchor}_{board}"
+        elif arch:
+            anchor = f"{anchor}_{arch}"
+
+        lines.append(f"   * - .. _magicvar_{anchor}:")
+        lines.append("")
+        lines.append(f"       ``{varname}``")
+        lines.append(f"     - {description}")
+
+    return '\n'.join(lines)
+
+
+def generate_rst(common_vars, arch_vars, board_vars):
+    """Generate the complete ReST documentation."""
+    out = []
+
+    # Group common variables by prefix
+    grouped = defaultdict(list)
+    for varname, description in common_vars:
+        prefix = get_prefix_group(varname)
+        grouped[prefix].append((varname, description))
+
+    # Hoist single-element groups
+    grouped = hoist_single_elements(grouped)
+
+    # Build a hierarchy tree
+    hierarchy = defaultdict(lambda: {'vars': [], 'children': {}})
+
+    for prefix, vars_list in grouped.items():
+        if prefix is None:
+            hierarchy[None]['vars'] = vars_list
+        else:
+            # Split into top-level and sub-level
+            parts = prefix.split('.')
+            if len(parts) == 1:
+                # Top-level like "global"
+                hierarchy[prefix]['vars'] = vars_list
+            else:
+                # Sub-level like "global.bootm"
+                top_level = parts[0]
+                hierarchy[top_level]['children'][prefix] = vars_list
+
+    # Generate output with hierarchy
+    # First, handle "No prefix" group
+    if None in hierarchy and hierarchy[None]['vars']:
+        out.append("No prefix")
+        out.append("-" * len(out[-1]))
+        out.append("")
+        out.append(generate_table(hierarchy[None]['vars']))
+        out.append("")
+
+    # Then handle top-level groups in alphabetical order
+    sorted_top_level = sorted([k for k in hierarchy.keys() if k is not None])
+
+    for top_prefix in sorted_top_level:
+        group = hierarchy[top_prefix]
+
+        # Top-level heading
+        out.append(f"{top_prefix}.*")
+        out.append("-" * len(out[-1]))
+        out.append("")
+
+        # Top-level variables table (if any)
+        if group['vars']:
+            out.append(generate_table(group['vars']))
+            out.append("")
+
+        # Sub-level groups
+        for sub_prefix in sorted(group['children'].keys()):
+            out.append(f"{sub_prefix}.*")
+            out.append("^" * len(out[-1]))
+            out.append("")
+            out.append(generate_table(group['children'][sub_prefix]))
+            out.append("")
+
+    # Architecture-specific variables
+    if arch_vars:
+        for arch in sorted(arch_vars.keys()):
+            out.append(f"{arch}-specific variables")
+            out.append("-" * len(out[-1]))
+            out.append("")
+            out.append(generate_table(arch_vars[arch], arch=arch))
+            out.append("")
+
+    # Board-specific variables
+    if board_vars:
+        out.append("Board-specific variables")
+        out.append("-" * len(out[-1]))
+        out.append("")
+
+        for board in sorted(board_vars.keys()):
+            out.append(board)
+            out.append("^" * len(out[-1]))
+            out.append("")
+            out.append(generate_table(board_vars[board], board=board))
+            out.append("")
+
+    return '\n'.join(out)
+
+
+def main():
+    if len(sys.argv) != 3:
+        print("Usage: gen_magicvars.py <source_dir> <output_file>", file=sys.stderr)
+        sys.exit(1)
+
+    source_dir = sys.argv[1]
+    output_file = sys.argv[2]
+
+    # Collect all magic variables
+    all_vars = defaultdict(lambda: defaultdict(set))  # {varname: {description: set of (arch, board)}}
+
+    for root, dirs, files in os.walk(source_dir):
+        for name in files:
+            if name.endswith('.c'):
+                filepath = os.path.join(root, name)
+                relpath = os.path.relpath(filepath, source_dir)
+
+                arch, board = categorize_file(relpath)
+                magicvars = parse_c(filepath)
+
+                for varname, description in magicvars:
+                    all_vars[varname][description].add((arch, board))
+
+    # Check for inconsistent descriptions
+    for varname, descriptions in all_vars.items():
+        if len(descriptions) > 1:
+            print(f"gen_magicvars: warning: variable '{varname}' has multiple different descriptions", file=sys.stderr)
+            for desc in descriptions:
+                print(f"  - {desc}", file=sys.stderr)
+
+    # Organize variables into categories
+    common_vars = []
+    arch_vars = defaultdict(list)
+    board_vars = defaultdict(list)
+
+    for varname, descriptions in all_vars.items():
+        # Use the first description (or we could merge them)
+        description = list(descriptions.keys())[0]
+        locations = list(descriptions.values())[0]
+
+        # Determine where this variable should go
+        is_board = any(board is not None for arch, board in locations)
+        is_arch = any(arch is not None and board is None for arch, board in locations)
+        is_common = any(arch is None and board is None for arch, board in locations)
+
+        # Priority: board > arch > common
+        if is_board:
+            for arch, board in locations:
+                if board is not None:
+                    board_vars[board].append((varname, description))
+        elif is_arch:
+            for arch, board in locations:
+                if arch is not None and board is None:
+                    arch_vars[arch].append((varname, description))
+        elif is_common:
+            common_vars.append((varname, description))
+
+    # Remove duplicates within each category
+    common_vars = list(set(common_vars))
+    for arch in arch_vars:
+        arch_vars[arch] = list(set(arch_vars[arch]))
+    for board in board_vars:
+        board_vars[board] = list(set(board_vars[board]))
+
+    # Generate ReST documentation
+    rst = generate_rst(common_vars, arch_vars, board_vars)
+
+    # Write to output file
+
+    # Only write the new rst if it differs from the old one.
+    hash_old = hashlib.sha1()
+    try:
+        f = open(output_file, 'rb')
+        hash_old.update(f.read())
+    except Exception:
+        pass
+
+    hash_new = hashlib.sha1()
+    hash_new.update(rst.encode('utf-8'))
+    if hash_old.hexdigest() == hash_new.hexdigest():
+        return
+
+    with open(output_file, 'w') as f:
+        f.write(rst)
+
+
+if __name__ == '__main__':
+    main()
diff --git a/Documentation/user/variables.rst b/Documentation/user/variables.rst
index cb1296c06d02..61808f1d72de 100644
--- a/Documentation/user/variables.rst
+++ b/Documentation/user/variables.rst
@@ -94,13 +94,13 @@ This example changes the partitioning of the nand0 device:
 .. _magicvars:
 
 Magic variables
----------------
+===============
 
 Some variables have special meanings and influence the behaviour
 of barebox. Most but not all of them are consolidated in the :ref:`global_device`.
 Since it's hard to remember which variables these are and if the current
 barebox has support for them the :ref:`command_magicvar` command can print a list
-of all variables with special meaning along with a short description:
+of all active variables with special meaning along with a short description:
 
 .. code-block:: console
 
@@ -108,9 +108,6 @@ of all variables with special meaning along with a short description:
   OPTARG                           optarg for hush builtin getopt
   PATH                             colon separated list of paths to search for executables
   PS1                              hush prompt
-  armlinux_architecture            ARM machine ID
-  armlinux_system_rev              ARM system revision
-  armlinux_system_serial           ARM system serial
   automount_path                   mountpath passed to automount scripts
   bootargs                         Linux Kernel parameters
   bootsource                       The source barebox has been booted from
@@ -118,3 +115,7 @@ of all variables with special meaning along with a short description:
   global.boot.default              default boot order
   ...
 
+Above output will only list magic variables that were compiled.
+Below is a full listing of all currently documented magic variables:
+
+.. include:: magicvars.rst
-- 
2.47.3



